// draw_self();
draw_set_halign(fa_center);
if (selected) {
	draw_set_color(oColorCodes.lightBlue);
	targetScale = 1.3
} else {
	draw_set_font(FntSuggestion);
	draw_set_color(c_gray);
	draw_text_transformed(x+sprite_width/2,
	y+4,tooltip,scale,scale,0);
	draw_set_color(c_white);
	targetScale = 1
}

draw_set_font(FntMediumLarge);
draw_set_halign(fa_center);

draw_text_transformed(x+sprite_width/2,
y+sprite_height/2-10,text,scale,scale,0);

draw_set_font(FntSuggestion);


if (selected) {
	draw_sprite_ext(sActiveCentered,0,x+sprite_width/2,y-10,3,3,0,c_white,1)	
	// draw_sprite_ext(sActiveCentered,0,x-10,y+sprite_height/2,3,3,0,c_white,1)	
	if (selectedTimer > 0) {
			selectedTimer--;
	} else if (selectedTimer == 0) {
		draw_set_font(FntMediumLarge);
		draw_set_halign(fa_center);
		draw_set_color(c_gray);
		draw_set_font(FntSuggestion);
		draw_text_transformed(x+sprite_width/2,
		y+sprite_height+4,"[space]",scale,scale,0);
	} else {
		selectedTimer = 600;	
	}
} else if (selectedTimer >= 0) {
	selectedTimer = -1;	
}

scale = lerp(scale, targetScale, 0.4);