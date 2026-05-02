if (oPauseManager.paused) {
	return;	
}
if (drawTimer> 0) {
	drawTimer--;	
} else {
	if (irandom(100)>98) {
		drawTimer = 30;	
		oScreenShake.shakeAmount+=5;
		audio_play_sound(SndBinaryStarConnect,1,0);
	}
}