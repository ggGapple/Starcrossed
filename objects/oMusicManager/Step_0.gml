if (audio_system_is_available()) {

    var targetTrack = -1; 
    if (musicVolume > 0) {
        if (room == StartRoom) {
            targetTrack = SndIntro;
        } else if (room == CombatRoom) {
            targetTrack = SndOst1;
        }
    }

    if (targetTrack == SndIntro) {
        if (!playingIntro) {
            playingIntro = true;
            if (!audio_is_playing(introSnd)) introSnd = audio_play_sound(SndIntro, 10, true);
            audio_sound_gain(introSnd, musicVolume/3, 3000);
        }
    } else {
        if (playingIntro) {
            playingIntro = false;
            audio_sound_gain(introSnd, 0, 2000); 
        }
    }

    if (targetTrack == SndOst1) {
        if (!playingOst) {
            playingOst = true;
            if (!audio_is_playing(ostSnd)) ostSnd = audio_play_sound(SndOst1, 10, true);
            audio_sound_gain(ostSnd, musicVolume/3, 3000);
        }
    } else {
        if (playingOst) {
            playingOst = false;
            audio_sound_gain(ostSnd, 0, 2000);
        }
    }
}

if (curMusicVolume != musicVolume) {
    var vol = musicVolume / 3;
    if (playingIntro) audio_sound_gain(introSnd, vol, 0);
    if (playingOst)   audio_sound_gain(ostSnd, vol, 0);
    curMusicVolume = musicVolume;
}

if (curSfxVolume != sfxVolume) {
    audio_group_set_gain(SFX, sfxVolume/4, 0);
    curSfxVolume = sfxVolume;
}