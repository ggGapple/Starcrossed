
playingIntro = false;
playingOst = false;
introSnd = audio_play_sound(SndIntro,10,true);
audio_sound_gain(introSnd,0,0);
ostSnd = audio_play_sound(SndOst1,10,true);
audio_sound_gain(ostSnd,0,0);

musicVolume = 3;
sfxVolume = 3;




curMusicVolume = 3;


curSfxVolume = 3;

if (!audio_group_is_loaded(SFX)) {
    audio_group_load(SFX);
}