draw_self();
if ((explodeTimer < 60 and explodeTimer > 40) || (explodeTimer <=15)) {
	drawTimer++;	
	draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,0,c_white,drawTimer/30)
} else if ((explodeTimer <= 30 and explodeTimer > 15)) {
	drawTimer--;	
	draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,0,c_white,drawTimer/30)
}

