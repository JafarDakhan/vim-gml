
canPlay = true;
showHitbox = false;

playerAnim = instance_create_layer(x, y, layer, oPlayerAnim);

canMove = true;
onFloor = false;
colideWithPlatform = false;
playerDir = 0;

hSPDMaxVal = 1.8;
hSPDAir = 0.3;
hSPDAirBuff = 0;
hSPDStart = 0.5;
hSPD = 0;
xAccelGround = 0.13;
xAccelAir = 0.12;
xAccel = xAccelGround;
xDeaccel = 0.2;
changeDirDeAccel = 0.22;

walkEffect = 0;
walkSoundTime = 15;
walkSoundTimer = walkSoundTime;
dustTime = 12;
dustTimer = dustTime;

prevInput = 0;
prevActiveInput = 0;

gravOrg = 0.3;
grav = gravOrg;
gravHalf = gravOrg * 0.7;
vSPDMaxVal = 3.0;
vSPDMaxValDown = 3.5;
vSPDcur = vSPDMaxVal;
vSPD = 0;
halveGravWhen = -1.4;

canJmp = false;
falling = false;
jmpSPD = -4.2;
varJmpVspd = -1.4;
jmpBuff = 14;
jmpSim = false;
isJumping = false;

coyoteTimeVal = 7;
coyoteTime = 0;

squashXmax = 1.5;
squashXmin = 0.7;
squashXAdd = 0.3;
squashXLerpSpd = 0.1;
sprXScale = 1;
sprXSclCur = 1;
changeXSclAirTime = 10;
changeXSclAirTimer = changeXSclAirTime;
squashYmax = 0.8;
squashYAdd = 0.2;
squashYLerpSpd = 0.15;
sprYScale = 1;
xSclOrig = 1;

anim = sPlayer;

