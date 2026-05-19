draw_self();
if (oEverythingManager.showTips) {
	draw_set_font(FntSuggestion);
	draw_set_color(c_gray);
	if (tooltip == "<- A") {
		draw_text_transformed(35,
		y+72,tooltip,1.1,1.1,0);			
	} else if (tooltip == "D ->") {
		draw_text_transformed(room_width-35 - string_width(tooltip),
		y+72,tooltip,1.1,1.1,0);
	}
}