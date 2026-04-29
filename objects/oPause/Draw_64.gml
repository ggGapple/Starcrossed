

draw_set_color(c_white);
draw_set_alpha(1);

draw_self();

if (!areYouSure) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(FntOptions);
	draw_text_transformed(x,y - sprite_height/2+60*oResolutionManager.uiScale,
	"Options",oResolutionManager.uiScale,
	oResolutionManager.uiScale,0);

	draw_set_font(FntMedium);
	var optionsAnswers = []

	optionsAnswers[0] = (oMusicManager.musicVolume == 0 ? "< muted >" : "< "+string(oMusicManager.musicVolume) + " >")
	optionsAnswers[1] = (oMusicManager.sfxVolume == 0 ? "< muted >" : "< "+string(oMusicManager.sfxVolume) + " >")
	optionsAnswers[2] = oEverythingManager.fullscreen ? "< On >" : "< Off >"
	optionsAnswers[3] = oEverythingManager.doTutorial ? "< On >" : "< Off >"
	optionsAnswers[4] = oEverythingManager.showRunCountInMenu ? "< On >" : "< Off >"
	for (i = 0; i < array_length(optionsArray);i++) {
	
		if (selected == i) {
			scales[i] = lerp(scales[i],1.3,0.3)
			draw_set_color(oColorCodes.lightBlue);
		} else {
			draw_set_color(c_white);
			scales[i] = lerp(scales[i],1.1,0.3)
		}
		draw_set_halign(fa_left);
		draw_text_transformed(x-sprite_width/2+20*oResolutionManager.uiScale,y-sprite_height/2+
		150*oResolutionManager.uiScale 
		+ 30*i*oResolutionManager.uiScale,optionsArray[i],
		oResolutionManager.uiScale*scales[i], oResolutionManager.uiScale*scales[i],0);
		draw_set_halign(fa_right);
		draw_text_transformed(x+sprite_width/2-20*oResolutionManager.uiScale,y-sprite_height/2+
		150*oResolutionManager.uiScale + 30 * i*oResolutionManager.uiScale,optionsAnswers[i], 
		oResolutionManager.uiScale*scales[i], oResolutionManager.uiScale*scales[i],0);
	}
	if (selected == array_length(optionsArray)) {
		scales[i] = lerp(scales[i],1.3,0.3)
		draw_set_color(oColorCodes.lightBlue);
	} else {
		draw_set_color(c_white);	
		scales[i] = lerp(scales[i],1.1,0.3)
	}
	draw_set_halign(fa_center);
	draw_text_transformed(x,y-sprite_height/2+20*oResolutionManager.uiScale+
		150*oResolutionManager.uiScale + 30 * array_length(optionsArray)*oResolutionManager.uiScale,"Main Menu",
	oResolutionManager.uiScale*scales[array_length(optionsArray)], 
	oResolutionManager.uiScale*scales[array_length(optionsArray)],0);

	if (selected == array_length(optionsArray)+1) {
		scales[i+1] = lerp(scales[i+1],1.3,0.3)
		draw_set_color(oColorCodes.lightBlue);
	} else {
		draw_set_color(c_white);	
		scales[i+1] = lerp(scales[i+1],1.1,0.3)
	}

	draw_text_transformed(x,y+sprite_height/2-30*oResolutionManager.uiScale,"Back",
	oResolutionManager.uiScale*scales[array_length(optionsArray)+1], 
	oResolutionManager.uiScale*scales[array_length(optionsArray)+1],0);


	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
} else {
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(FntMediumLarge);
	draw_text_transformed(x,y - sprite_height/2+60*oResolutionManager.uiScale,
	"Are you sure?",oResolutionManager.uiScale,
	oResolutionManager.uiScale,0);

	draw_set_font(FntMedium);
	
	draw_text_transformed(x,y - sprite_height/2+120*oResolutionManager.uiScale,
	"You will lose your run",oResolutionManager.uiScale,
	oResolutionManager.uiScale,0);
	
	if (selected == 0) {
		scales[0] = lerp(scales[0],1.3,0.3)
		draw_set_color(oColorCodes.lightBlue);
	} else {
		draw_set_color(c_white);	
		scales[0] = lerp(scales[0],1.1,0.3)
	}
	
	draw_text_transformed(x,y-25*oResolutionManager.uiScale,"No",
	oResolutionManager.uiScale*scales[0], 
	oResolutionManager.uiScale*scales[0],0);
	
	if (selected == 1) {
		scales[1] = lerp(scales[1],1.3,0.3)
		draw_set_color(oColorCodes.lightBlue);
	} else {
		draw_set_color(c_white);	
		scales[1] = lerp(scales[1],1.1,0.3)
	}
	
	draw_text_transformed(x,y+25*oResolutionManager.uiScale,"Yes",
	oResolutionManager.uiScale*scales[1], 
	oResolutionManager.uiScale*scales[1],0);
	





	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}