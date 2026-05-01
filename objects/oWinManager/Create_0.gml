curIndex4 = 0;
curChar4 = 0;
upgradesString = "Current upgrades: ";
upgradesString2 = "";
draw_set_font(FntSuggestion);
for (i = 0; i < array_length(oPlayerManager.chosen);i++) {
	if (string_width(upgradesString + oPlayerManager.chosen[i]) > room_width) {
		upgradesString2 += oPlayerManager.chosen[i];
		if (i != array_length(oPlayerManager.chosen)-1) {
			upgradesString2 += ", "
		}
	} else {
		upgradesString+=oPlayerManager.chosen[i]
		if (i != array_length(oPlayerManager.chosen)-1) {
			upgradesString += ", "
		}
	}
	

} 
curIndex5 = 0;
curChar5 = 0;
fullText5 = upgradesString2;

fullText4 = upgradesString;
textSpeed=0.5;

audio_play_sound(SndWinRound, 1, 0)
oEverythingManager.runCount++;
updateSettings();