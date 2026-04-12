leftHpRegenTimer--;
if (leftHpRegenTimer < 0) {
	leftHpRegenTimer = 200;
	leftHp=min(leftHp+0.5,leftHpMax);
}
// Regens faster when very low
if (leftHp/leftHpMax < 0.2){
	leftHpRegenTimer -= 5 * (1 - leftHp/leftHpMax)	
}


if (rightHp<=0) {
	audio_play_sound(SndWinRound, 1, 0)
	if (oEverythingManager.level == 5) {
		room_goto(WinRoom);
	} else {
		room_goto(UpgradesRoom);
	}
}