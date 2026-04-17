draw_set_font(FntTitle);
draw_set_color(oColorCodes.lightBlue);
draw_set_halign(fa_center);
drawTextSpaced(display_get_gui_width()/2,display_get_gui_height()*-1/35,
title,4,oResolutionManager.uiScale,
oResolutionManager.uiScale,0,7);


if (!freeze) {
	draw_set_color(oColorCodes.darkBlue);
	draw_set_font(FntStart);
	draw_set_halign(fa_center);
	drawTextTransformedShadow(display_get_gui_width()/2,
	display_get_gui_height()*16/20,"Start",oResolutionManager.uiScale,oResolutionManager.uiScale,0,4);
	draw_set_font(FntSuggestion);
	draw_set_halign(fa_center);
	drawTextTransformedShadow(display_get_gui_width()/2,
	display_get_gui_height()*17/21,
	"press any key to",oResolutionManager.uiScale,oResolutionManager.uiScale,0,1.3);
	
	draw_sprite_ext(sActiveGlisten,spriteTimer,display_get_gui_width()/2,
	display_get_gui_height()/2,10*oResolutionManager.uiScale,10*
	oResolutionManager.uiScale,0,c_white,1);
}