draw_set_color(oColorCodes.lightBlue);
draw_set_font(FntTitle);
draw_text(room_width/2-string_width("You won!! :D")/2, room_height/2-string_height("You win!! :D")/2, 
"You won!! :D");
draw_set_font(FntMedium);
draw_set_color(oColorCodes.darkBlue);
diff = oEverythingManager.difficultyNames[oEverythingManager.dIndex]
draw_text(string_width(diff) / 2 - 1, 
string_height(diff) / 2 + 1, 
"Difficulty: " + diff)

	if (fullText5 != "") {
		var _displayText3 = string_copy(fullText4, 1, floor(curChar4));
		draw_set_font(FntSuggestion);
		draw_set_color(oColorCodes.darkBlue);
		draw_text(10,room_height-string_height(_displayText3)-25,_displayText3);
		var _displayText5 = string_copy(fullText5, 1, floor(curChar5));
		draw_set_font(FntSuggestion);
		draw_set_color(oColorCodes.darkBlue);
		draw_text(10,room_height-string_height(_displayText5)-5,_displayText5);
	} else {
		var _displayText3 = string_copy(fullText4, 1, floor(curChar4));
		draw_set_font(FntSuggestion);
		draw_set_color(oColorCodes.darkBlue);
		draw_text(10,room_height-string_height(_displayText3)-5,_displayText3);		
	}