curIndex4 = 0;
curChar4 = 0;
upgradesString = "Upgrades: ";
for (i = 0; i < array_length(oPlayerManager.chosen);i++) {
	upgradesString+=oPlayerManager.chosen[i]
	if (i != array_length(oPlayerManager.chosen)-1) {
		upgradesString += ", "
	}
}

fullText4 = upgradesString;
textSpeed=0.5;

audio_play_sound(SndWinRound, 1, 0)