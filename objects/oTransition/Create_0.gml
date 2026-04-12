image_alpha = 0;
x = 0;
y = 0;
image_xscale = room_width/sprite_get_width(sBlack);
image_yscale = room_height/sprite_get_height(sBlack);
timer = 0;
subimg = oButtonManager.spriteTimer;
leftX = room_width/2-sprite_get_width(sLeftAnimated)*5
rightX = room_width/2
audio_play_sound(SndChooseUpgrade,1,0);