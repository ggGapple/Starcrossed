if (dTimer > 0) {
	dTimer--;	
	draw_set_alpha(min(1,dTimer/60));
	draw_set_color(oColorCodes.lightRed);
	draw_set_font(FntMedium);
	draw_text(room_width-string_width("Difficulty: 3 (p to cycle")-12, 30,"Difficulty: "+
	string(difficulty*2)+" (p to cycle)")
	draw_set_alpha(1);
}

if (room == DeathRoom) {
	draw_set_color(oColorCodes.lightRed);
	draw_set_font(FntMedium);
	draw_text(room_width/2-string_width("Press R to restart")/2, room_height-40,"Press R to restart")
	draw_set_alpha(1);
}

