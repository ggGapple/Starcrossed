if (((room == WinRoom || room == DeathRoom) && playingOst) || (musicVolume == 0 && playingOst)) {
	audio_sound_gain(ostSnd, 0, 3000);
	playingOst = false;
} else if (room == CombatRoom and musicVolume != 0) {
	audio_sound_gain(ostSnd, musicVolume/3, 3000);
	playingOst = true;
}

if ((room != StartRoom and playingIntro) || (playingIntro && musicVolume == 0)) {
	playingIntro = false;
	audio_sound_gain(introSnd,0,3000);
} 
else if (room == StartRoom and !playingIntro && musicVolume != 0) {
	playingIntro = true
	audio_sound_gain(introSnd,musicVolume/3,3000);
}

if (curMusicVolume != musicVolume) {
	if (playingOst) {
		audio_sound_gain(ostSnd,musicVolume/3,3000);
	} else if (playingIntro) {
		audio_sound_gain(introSnd,musicVolume/3,3000);	
	}
	curMusicVolume = musicVolume;
}
if (curSfxVolume != sfxVolume) {
	audio_group_set_gain(SFX,sfxVolume/3,0);
	curSfxVolume = sfxVolume;
}