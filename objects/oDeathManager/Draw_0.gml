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
	var _displayText = string_copy(fullText, 1, floor(curChar));

draw_set_font(FntMedium)
draw_set_color(#0CE6F2);
draw_text(room_width/2-string_width(_displayText)/2, 
room_height/2-string_height(_displayText), _displayText)
} else {
	draw_set_font(FntMediumLarge);
	draw_set_color(#EE145B)
	draw_text(room_width/2 - string_width("You have been extinguished!")/2,
	room_height/2-string_height("You have been extinguished!"),
	"You have been extinguished!")	
}

