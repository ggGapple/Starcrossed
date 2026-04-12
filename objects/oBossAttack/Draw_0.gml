if (!(boomTimer < -120 and boomTimer>-160)) {
	draw_self();	
}

if (boomTimer > -20 and boomTimer < 0) {
	draw_set_color(oColorCodes.darkRed);
	draw_set_font(FntTitle);
	draw_set_alpha(1);
	show_debug_message("we should be booming");
	draw_text(x + sprite_width/2 - string_width("!")/2,
	y + sprite_height/2-string_height("!")/2,"!")
} if (boomTimer > -80 and boomTimer < -40) {
	draw_set_color(oColorCodes.darkRed);
	draw_set_alpha(1);
	draw_set_font(FntTitle);
	draw_text(x + sprite_width/2 - string_width("!")/2,
	y + sprite_height/2-string_height("!")/2,"!")
}