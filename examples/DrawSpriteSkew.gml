
///@description DrawSpriteSkew(sprite, image_index, x, y, xscale, yscale, angle, blend, alpha, image_xskew, image_yskew);
///@param sprite
///@param image index
///@param x
///@param y
///@param xscale
///@param yscale
///@param angle
///@param blend
///@param alpha
///@param xSkew
///@param ySkew

function DrawSpriteSkew(){/*{{{*/
	var sprite   = argument[0]; 
	var index    = argument[1];
	var xx       = argument[2];
	var yy       = argument[3]; 
	var xscale   = argument[4]; 
	var yscale   = argument[5];
	var cosAngle = cos(degtorad(argument[6])); 
	var sinAngle = sin(degtorad(argument[6])); 
	var tint     = argument[7];
	var alpha    = argument[8];
	var hskew    = argument[9];
	var vskew    = argument[10];

	// Calculate common operations
	var sprTex    = sprite_get_texture(sprite, index); 
	var sprWidth  = sprite_get_width(sprite); 
	var sprHeight = sprite_get_height(sprite); 
	var sprXOrig  = sprite_get_xoffset(sprite); 
	var sprYOrig  = sprite_get_yoffset(sprite);

	var tempX, tempY;

	// Begin drawing primitive
	draw_primitive_begin_texture(pr_trianglestrip, sprTex);

	// Top-left corner
	tempX = (-sprXOrig + (sprYOrig / sprHeight) * hskew) * xscale;
	tempY = (-sprYOrig + (sprXOrig / sprWidth) * -vskew) * yscale;
	draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 0, 0, tint, alpha);

	// Top-right corner
	tempX = (sprWidth + (sprYOrig / sprHeight) * hskew - sprXOrig) * xscale;
	tempY = (-sprYOrig + (1 - sprXOrig / sprWidth) * vskew) * yscale;
	draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 1, 0, tint, alpha);

	// Bottom-left corner
	tempX = (-sprXOrig + (1 - sprYOrig / sprHeight) * -hskew) * xscale;
	tempY = (sprHeight - sprYOrig + (sprXOrig / sprWidth) * -vskew) * yscale;
	draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 0, 1, tint, alpha);

	// Bottom-right corner
	tempX = (sprWidth - sprXOrig + (1 - sprYOrig / sprHeight) * -hskew) * xscale;
	tempY = (sprHeight - sprYOrig + (1 - sprXOrig / sprWidth) * vskew) * yscale;
	draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 1, 1, tint, alpha);

	// Finish drawing primitive
	draw_primitive_end();
}/*}}}*/

