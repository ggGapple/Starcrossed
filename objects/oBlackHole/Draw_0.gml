draw_self()
if (iShouldTakeDamageTimer > 0) {
	iShouldTakeDamageTimer--;
	draw_sprite_ext(redSprite,0,x,y,image_xscale,image_yscale,0,c_white,iShouldTakeDamageTimer/30);
	
}