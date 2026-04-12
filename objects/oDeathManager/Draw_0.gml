if (oEverythingManager.playerLives > 0) {
	draw_set_font(FntMediumLarge);
	draw_set_color(#EE145B);
	draw_text(room_width/2-string_width("You died! It's okay, you still have " + 
	string(oEverythingManager.playerLives) + " lives left")/2,50,"You died! It's okay, you still have " + 
	string(oEverythingManager.playerLives) + " lives left");
	draw_set_font(FntMedium);
	draw_text(room_width/2 - string_width("Press any key to restart level "+
	string(oEverythingManager.level))/2,room_height-60,
	"Press any key to restart level " + 
	string(oEverythingManager.level));
} else {
	draw_set_font(FntMediumLarge);
	draw_set_color(#EE145B)
		draw_text(room_width/2 - string_width("Unfortunately,")/2,
	room_height/2-string_height("Unfortunately,"),
	"Unfortunately,")	
	draw_text(room_width/2 - string_width("it looks like this is the end of the road for you.")/2,
	room_height/2,
	"it looks like this is the end of the road for you.")	
}