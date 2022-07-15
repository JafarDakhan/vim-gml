
with(playerAnim){
	sprite_index = other.anim;
	image_xscale = other.sprXScale;
	image_yscale = other.sprYScale;
	y = other.y - other.walkEffect;
	x = other.x;
}

if(showHitbox){
	draw_sprite(sPlayerHitbox, 0, x, y);
}

