if (muteTimer > 0) {
	muteTimer--;	
	draw_set_alpha(min(1,muteTimer/60));
	draw_set_font(FntMedium);
	draw_set_color(oColorCodes.darkBlue);
	draw_text(room_width-string_width("'M' to mute music")-5,
	5, "M to mute music");
	draw_set_alpha(1);
}
if (mutedTimer > 0) {
	mutedTimer--;	
	draw_set_alpha(min(1,mutedTimer/60));
	draw_set_font(FntMedium);
	draw_set_color(oColorCodes.darkBlue);
	draw_text(room_width-string_width("Music muted")-10
	,5, "Music muted");
	draw_set_alpha(1);
}

