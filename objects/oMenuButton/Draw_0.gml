// draw_self();
if (oEverythingManager.showTips) {
	draw_set_font(FntSuggestion);
	draw_set_color(c_gray);
	if (tooltip == "<- A") {
		draw_text_transformed(35,
		y+ sprite_height/2-5,tooltip,1.1,1.1,0);			
	} else if (tooltip == "D ->") {
		draw_text_transformed(room_width-35,
		y + sprite_height/2-5,tooltip,1.1,1.1,0);
	}
}
draw_set_halign(fa_center);
if (selected) {
	draw_set_color(oColorCodes.lightBlue);
	targetScale = 1.3
} else {
	targetScale = 1.1
	draw_set_color(c_white);
}



draw_set_font(FntMediumLarge);
draw_set_halign(fa_center);

draw_text_transformed(x+sprite_width/2,
y+sprite_height/2-10,text,scale,scale,0);

draw_set_font(FntSuggestion);


if (selected) {
	draw_sprite_ext(sActiveCentered,0,x+sprite_width/2,y-20,3,3,0,c_white,1)	
	// draw_sprite_ext(sActiveCentered,0,x-10,y+sprite_height/2,3,3,0,c_white,1)	
	if (oStartUIManager.menu == 0 || text == "Back") {
		if (oEverythingManager.showTips) {
			draw_set_font(FntMediumLarge);
			draw_set_halign(fa_center);
			draw_set_color(c_gray);
			draw_set_font(FntSuggestion);
			draw_text_transformed(x+sprite_width/2,
			y+sprite_height+8,"[space]",scale,scale,0);
		}
	} else if (text == "Classic" && oStartUIManager.menu == 1){
			draw_set_font(FntMediumLarge);
			draw_set_halign(fa_center);
			draw_set_color(c_gray);
			draw_set_font(FntSuggestion);
			draw_text_transformed(x+sprite_width/2,
			y+sprite_height+8,"Difficulty: < " + 
			oEverythingManager.difficultyNames[oEverythingManager.dIndex] + " >"
			,scale,scale,0);			
	} else if (text == "Starkiller") {
			draw_set_font(FntMediumLarge);
			draw_set_halign(fa_center);
			draw_set_color(c_gray);
			draw_set_font(FntSuggestion);
			draw_text_transformed(x+sprite_width/2,
			y+sprite_height+8,"WIP"
			,scale,scale,0);			
	}
} 

scale = lerp(scale, targetScale, 0.4);