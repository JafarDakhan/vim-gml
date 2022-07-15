
/// @param x
/// @param y
/// @param x_scale
/// @param y_scale
/// @param sprite_index

function MouseColGui(){
	var xx = argument[0];
	var yy = argument[1];
	var x_scale = argument[2];
	var y_scale = argument[3];
	var spritename = argument[4];
	var spriteheight = sprite_get_height(spritename);
	var spritewidth = sprite_get_width(spritename);
	var spriteleft = xx - ( (spritewidth/2)* x_scale);
	var spriteright = xx + ( (spritewidth/2) * x_scale);
	var spritetop = yy - ( (spriteheight/2)* y_scale);
	var spritebottom = yy + ( (spriteheight/2)* y_scale);

	result = 0; //default

	if point_in_rectangle(global.mouseGuiX, global.mouseGuiY, spriteleft, spritetop, spriteright, spritebottom){
		result = 1;													//hover
		if mouse_press(mb_left) { result = 2; }			//left click
		if mouse_press(mb_right) { result = 3; }			//right click
    }

	return(result);
}



