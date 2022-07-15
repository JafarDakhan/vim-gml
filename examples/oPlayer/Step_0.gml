

#region input

var _keyLeft = 0;
var _keyRight = 0;
var _keyDown = 0;
var _keySpacePress = 0;
var _keyJumpHold = 0;
if(canPlay){
	_keyLeft = key(vk_left) || key(ord("A"));
	_keyRight = key(vk_right) || key(ord("D"));
	_keyDown = key(vk_down) || key(ord("S"));
	_keySpacePress = key_press(vk_space) || key_press(ord("W")) || key_press(vk_up);
	_keyJumpHold = key(vk_space) || key(ord("W")) || key(vk_up);
}

#endregion

#region movement

// Horizonatal speed
var inputRes = _keyRight - _keyLeft;
inputRes *= canMove;

if(inputRes != 0){
	playerDir = inputRes;	
}

#region Accel & DeAccel
switch(inputRes){
	case 1:
	{
		if(prevActiveInput == -1) && (hSPD != 0){
			hSPD *= changeDirDeAccel;
		} 
		else if(prevInput == 0) && (hSPD  <= hSPDStart){ 
			hSPD = hSPDStart;	
		}
		
		if(hSPD < hSPDMaxVal + hSPDAirBuff){
			hSPD += xAccel;
		}
	}break;
	
	case -1:
	{	
		if(prevActiveInput == 1) && (hSPD != 0){
			hSPD *= changeDirDeAccel;
		}
		else if(prevInput == 0) && (hSPD > -hSPDStart){ 
			hSPD = -hSPDStart;	
		}
		
		if(hSPD > -(hSPDMaxVal + hSPDAirBuff)){
			hSPD -= xAccel;	
		}
	}break;
	
	case 0:			// Not moving
	{		
		if(hSPD != 0){
			hSPD = lerp(hSPD, 0, xDeaccel);	
		}
		
	}break;
}
prevInput = inputRes;
if(inputRes != 0) prevActiveInput = inputRes;

#endregion

// Gravity
vSPDcur = (_keyDown) ? lerp(vSPDcur, vSPDMaxValDown, grav) : lerp(vSPDcur, vSPDMaxVal, grav);
vSPD = (vSPD < vSPDcur) ? vSPD + grav : vSPDcur;

#endregion

if(hSPD != 0) && (changeXSclAirTimer <= 0){ 
	if(hSPD > 0){
		sprXScale = abs(sprXScale);	
		xSclOrig = 1;
		sprXSclCur = 1;
		squashXAdd = abs(squashXAdd);
	}
	else{
		if(sprXScale > 0){
			sprXScale *= -1; 
			xSclOrig = -1; 
			sprXSclCur = -1;
			squashXAdd *= -1;
		}
	}
}

// Squash lerping
sprXScale = lerp(sprXScale, xSclOrig, squashXLerpSpd);
sprYScale = lerp(sprYScale, 1, squashYLerpSpd);

#region jump thru platform
colideWithPlatform = false;
if(instance_exists(JUMPTHRU)){
	with(JUMPTHRU){
		if(place_meeting(x, y - other.vSPD, oPlayer) && other.vSPD >= 0 && other.y <= y){
			other.colideWithPlatform = true;
			while(abs(other.vSPD) > 0.1){
				other.vSPD *= 0.5;
				if(!place_meeting(x, y - other.vSPD, oPlayer)) other.y += other.vSPD;
			}	
			other.vSPD = 0;
		}
	}		
}

#endregion 

#region One the floor
if(place_meeting(x, y + 1, oColBlock) || colideWithPlatform){
	canJmp = true;
	coyoteTime = coyoteTimeVal;
	isJumping = false;
	hSPDAirBuff = 0;
	xAccel = xAccelGround;
	onFloor = true;
	changeXSclAirTimer--;
	
	if(falling){
		if(abs(sprXScale) < squashXmax) sprXScale += squashXAdd;
		if(sprYScale > squashYmax) sprYScale -= squashYAdd;
		changeXSclAirTimer = 0;
		falling = false;	
		
		PlaySound(snFall, 1, x, y);
		repeat(4){
			with(instance_create_depth(x + choose(-3, 3, -4, 4, -6, 6, 0, 0), y + irandom_range(0, 2), depth - 1000, oDust)){
				vspd = random_range(-0.04, -0.06);
				image_speed+=2.2;
			}
		}
	}
	
	if(abs(hSPD) >= hSPDStart){
		anim = sPlayerRun;	
	}
	else{
		anim = sPlayer;	
	}
}
else{
	anim = sPlayerJump;
	onFloor = false;
	hSPDAirBuff = hSPDAir;
	xAccel = xAccelAir;
	coyoteTime--;
	if(vSPD > 0){
		anim = sPlayerFalling;
		falling = true;
	}
	else falling = false;
}
#endregion

#region Jump

// Jump buffer
if(_keySpacePress) && (place_meeting(x, y + jmpBuff, COL)) && (falling){
	jmpSim = true;
}

// Jmp
if(canJmp * canMove) && (coyoteTime > 0){
	if(_keySpacePress) || (jmpSim){
		vSPD = jmpSPD;	
		if(abs(sprXScale) > squashXmin){
			sprXScale = sprXSclCur;
			sprXScale -= squashXAdd;
		}
	
		jmpSim = false;
		canJmp = false;
		isJumping = true;
		changeXSclAirTimer = changeXSclAirTime;
		
		PlaySound(snJump, 1, x, y);
		
		repeat(4){
			with(instance_create_depth(x + choose(-3, 3, -4, 4, -6, 6, 0, 0), y + irandom_range(0, 2), depth - 1000, oDust)){
				vspd = random_range(-0.1, -0.16);
				image_speed+=2.2;
			}
		}
	}
}

// Variable jmp
grav = gravOrg;
if(isJumping){
	if(!_keyJumpHold) && (vSPD < 0){			
		vSPD = max(vSPD, varJmpVspd);
	}
	else if(_keyJumpHold) && (vSPD > halveGravWhen){
		grav = gravHalf
	}
}

#endregion


#region Collide and move

// X
if(place_meeting(x + hSPD, y, oColBlock)){
	while(abs(hSPD) > 0.1){
		hSPD *= 0.5;
		if(!place_meeting(x + hSPD, y, oColBlock)) x += hSPD;
	}
	hSPD = 0;
}
x += hSPD;

// Y
if(place_meeting(x, y + vSPD, oColBlock)){
	while(abs(vSPD) > 0.1){
		vSPD *= 0.5;
		if(!place_meeting(x, y + vSPD, oColBlock)) y += vSPD;
	}	
	vSPD = 0;
}
y += vSPD;

#endregion



