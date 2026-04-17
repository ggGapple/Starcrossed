draw_self();

leftX = display_get_gui_width()/2-sprite_get_width(sActiveGlisten)*5*oResolutionManager.uiScale;
rightX = display_get_gui_width()/2;
if (timer >= 60) {
	leftX -=25*oResolutionManager.uiScale;
	rightX +=25*oResolutionManager.uiScale;
	if (timer == 60) {
		oScreenShake.shakeAmount = 10;
		audio_play_sound(SndStart,1,0);
	}
}


draw_sprite_part_ext(sActiveGlisten, subimg,0,
0,sprite_get_width(sActiveGlisten)/2,sprite_get_height(sActiveGlisten),
leftX,
display_get_gui_height()/2 - sprite_get_height(sActiveGlisten)*5*oResolutionManager.uiScale,
10*oResolutionManager.uiScale,
oResolutionManager.uiScale*10,c_white,1)

draw_sprite_part_ext(sActiveGlisten, subimg,sprite_get_width(sActiveGlisten)/2,
0,sprite_get_width(sActiveGlisten),sprite_get_height(sActiveGlisten),
rightX,
display_get_gui_height()/2 - sprite_get_height(sActiveGlisten)*5*oResolutionManager.uiScale,
10*oResolutionManager.uiScale,10
*oResolutionManager.uiScale,c_white,1)