if (room == DeathRoom && playerLives == 0) {
	draw_set_color(oColorCodes.lightRed);
	draw_set_font(FntMedium);
	draw_text(room_width/2-string_width("Press R to restart")/2, room_height-40,"Press R to restart")
	draw_set_alpha(1);
}

