if (attackWindow > 0) {
	draw_set_font(FntMedium);
	draw_set_color(#FFF568);
	if (oPlayerLeft.active) {
		draw_text(oPlayerLeft.x + sprite_get_width(sActive) +9,oPlayerLeft.y-25,"!");
	} else {
		draw_text(oPlayerRight.x + sprite_get_width(sInactiveLeft) + 9,oPlayerRight.y-25,"!");
	}
}