playing = false;
stopping = false;
muted = false;

muteTimer = 0;
mutedTimer = 0;

playingIntro = false;
introSnd = audio_play_sound(SndIntro,10,true);
audio_sound_gain(introSnd,0,0);
ostSnd = audio_play_sound(SndOst1,10,true);
audio_sound_gain(ostSnd,0,0);