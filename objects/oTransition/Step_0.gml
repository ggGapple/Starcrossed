timer++; 
image_xscale = display_get_gui_width()/sprite_get_width(sBlack);
image_yscale = display_get_gui_height()/sprite_get_height(sBlack);


if (timer > 120) {
	image_alpha+=0.01;
	if (image_alpha ==1) {
		room_goto_next();
		draw_set_valign(fa_top);
		instance_destroy();
	}
}