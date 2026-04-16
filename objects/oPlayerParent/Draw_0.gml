draw_self();
if (active and drawExplosion and explosionTimer > 0) {
	explosionTimer--;
	draw_set_color(#EE145B)
	draw_set_alpha(explosionTimer/50);
	draw_circle(x + sprite_width/2,
			y + sprite_height/2,100,false);	
	draw_set_alpha(1);
}

