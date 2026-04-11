var _displayText = string_copy(fullText, 1, floor(curChar));

draw_set_font(FntMedium)
draw_text(room_width/2-string_width(fullText)/2, 30, _displayText);