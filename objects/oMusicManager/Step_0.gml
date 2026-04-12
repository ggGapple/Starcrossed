if ((room == WinRoom || room == DeathRoom) and !stopping) {
	audio_stop_sound(SndOst1)	
	stopping = true;
	playing = false;
} else if (room == CombatRoom and !playing and !muted) {
	stopping = false;
	playing = true;
	audio_play_sound(SndOst1,1,2384);
	muteTimer = 180;
}

if (keyboard_check_pressed(ord("M"))) {
	if (playing and !muted) {
		audio_stop_sound(SndOst1);
		muted = true;
		mutedTimer = 180;
	} else if (muted) {
		muted = false;
		playing = false;
	}
}