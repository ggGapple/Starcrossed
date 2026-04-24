if ((room == WinRoom || room == DeathRoom) and !stopping) {
	audio_stop_sound(SndOst1)	
	stopping = true;
	playing = false;
} else if (room == CombatRoom and !playing and !muted) {
	stopping = false;
	playing = true;
	audio_sound_gain(ostSnd, 1, 3000);
	muteTimer = 180;
	mutedTimer = 0;
}

if (keyboard_check_pressed(ord("M"))) {
	if (playing and !muted) {
		audio_stop_sound(SndOst1);
		muted = true;
		mutedTimer = 180;
		muteTimer = 0;
	} else if (muted) {
		muted = false;
		playing = false;
	}
}

if (room != StartRoom and playingIntro) {
	playingIntro = false;
	audio_sound_gain(introSnd,0,3000);
} 
else if (room == StartRoom and !playingIntro) {
	playingIntro = true

	audio_sound_gain(introSnd,1,3000);
}