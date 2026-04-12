draw_set_color(oColorCodes.lightBlue);
draw_set_font(FntTitle);
draw_text(room_width/2-string_width("You won!! :D")/2, room_height/2-string_height("You win!! :D")/2, 
"You won!! :D");

var _displayText3 = string_copy(fullText4, 1, floor(curChar4));
draw_set_font(FntSuggestion);
draw_set_color(oColorCodes.lightBlue);
draw_text(10,room_height-string_height(_displayText3)-5,_displayText3);