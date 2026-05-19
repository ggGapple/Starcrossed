
if (boomTimer > -20 and boomTimer < 0) {
	if (boomTimer == 0) {
		audio_play_sound(SndUpgrade,1,0)
	}
	draw_set_color(c_white);
	draw_set_font(FntTitle);
	draw_set_alpha(1);
	draw_text(x + sprite_width/2 - string_width("!")/2,
	y + sprite_height/2-string_height("!")/2,"!")
} if (boomTimer > -60 and boomTimer < -40) {
	if (boomTimer == -40) {
		audio_play_sound(SndUpgrade,1,0)
	}
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(FntTitle);
	draw_text(x + sprite_width/2 - string_width("!")/2,
	y + sprite_height/2-string_height("!")/2,"!")
}