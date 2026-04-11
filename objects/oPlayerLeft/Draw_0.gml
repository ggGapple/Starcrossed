draw_self();
if (active and drawExplosion and explosionTimer > 0) {
	explosionTimer--;
	draw_set_color(#EE145B)
	draw_set_alpha(explosionTimer/50);
	draw_circle(x + sprite_get_width(sprite_index)/2*image_xscale,
			y + sprite_get_height(sprite_index)/2*image_yscale,100,false);	
	draw_set_alpha(1);
}