if (in) {
	image_alpha = lerp(image_alpha,0.7,0.1);
	if (image_alpha>=0.65) {
		image_alpha = 0.65;
		in = false;
	}
} else if (out) {
	image_alpha = lerp(image_alpha,0,0.1);	
	if (image_alpha<0.05) {
		image_alpha = 0;
		out = false;
	}
}

if (image_alpha == 0 and oPlayerRight.active) {
	in = true;
}if (image_alpha !=0 and oPlayerLeft.active) {
	in = false;
	out = true;
}

if (image_xscale != display_get_gui_width/sprite_get_width(sVignette)) { 
	image_yscale = display_get_gui_height/sprite_get_height(sVignette)
	image_xscale = display_get_gui_width/sprite_get_width(sVignette)*1.2;
}