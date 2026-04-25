if (oPauseManager.paused) {
	return;	
}

leftHpRegenTimer--;
if (leftHpRegenTimer < 0) {
	leftHpRegenTimer = 150;
	leftHp=min(leftHp+0.5,leftHpMax);
}
// Regens faster when very low
if (leftHp/leftHpMax < 0.25){
	leftHpRegenTimer -= 2 * (1 - leftHp/leftHpMax)	
}

if (rightHp/rightHpMax <= 0.5 && !rotatedAlready && instance_exists(oBlackHole)){
	rotatedAlready = true
	oBlackHole.rotating = true
}


if (rightHp<=0) {
	audio_play_sound(SndWinRound, 1, 0)
	if (oEverythingManager.level == 5) {
		room_goto(WinRoom);
	} else {
		rotatedAlready = false
		room_goto(UpgradesRoom);
	}
}