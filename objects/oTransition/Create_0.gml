image_alpha = 0;
x = 0;
y = 0;

timer = 0;
subimg = oStartUIManager.spriteTimer;
audio_play_sound(SndChooseUpgrade,1,0);

leftX = display_get_gui_width()/2-sprite_get_width(sActiveGlisten)*5*oResolutionManager.uiScale;
rightX = display_get_gui_width()/2;