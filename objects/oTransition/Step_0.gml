


timer++; 

if (timer == 60) {
	leftX -=25;
	rightX +=25;
	oCameraManager.shakeAmount = 10;
	audio_play_sound(SndStart,1,0);
}

if (timer > 120) {
	image_alpha+=0.01;
	if (image_alpha ==1) {
		room_goto_next();	
		instance_destroy();
	}
}