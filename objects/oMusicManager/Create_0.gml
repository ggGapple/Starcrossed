
playingIntro = false;
playingOst = false;
introSnd = -1;
ostSnd = -1

musicVolume = 3;
sfxVolume = 3;




curMusicVolume = 3;


curSfxVolume = 3;

if (!audio_group_is_loaded(SFX)) {
    audio_group_load(SFX);
}