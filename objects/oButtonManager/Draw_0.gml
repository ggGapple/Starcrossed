draw_set_color(oColorCodes.darkBlue);
draw_set_font(FntStart);
draw_text(room_width/2-string_width("Start")/2,room_height-145,"Start");
draw_set_font(FntSuggestion);
draw_text(room_width/2-string_width("press any key to")/2,room_height-130,"press any key to");

if (!freeze) {
	draw_sprite_ext(sLeftAnimated,spriteTimer,room_width/2-sprite_get_width(sLeftAnimated)*5,
	room_height/2-sprite_get_height(sLeft)*5,10,10,0,c_white,1);
}