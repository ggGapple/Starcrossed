if (oPauseManager.paused) {
	return;	
}

leftHpRegenTimer--;
if (leftHpRegenTimer < 0) {
	leftHpRegenTimer = oEverythingManager.regenMax;
	leftHp=min(leftHp+0.5,leftHpMax);
}
// Regens faster when very low
if (leftHp/leftHpMax < 0.2){
	leftHpRegenTimer -= 2 * (1 - leftHp/leftHpMax)	
}

if (rightHp/rightHpMax <= 0.5 && !rotatedAlready && instance_exists(oBlackHole)){
	rotatedAlready = true
	oBlackHole.rotating = true
}


if (rightHp<=0) {
	audio_play_sound(SndWinRound, 1, 0)
	if (oEverythingManager.level == 5 && oEverythingManager.lightyear < 100) {
		oPlayerManager.abilityCooldown = 0;
		room_goto(RareUpgradesRoom);
	} else if (oEverythingManager.level == 5) {
		oPlayerManager.abilityCooldown = 0;
		room_goto(WinRoom);	
	}
	else {
		rotatedAlready = false
		oPlayerManager.abilityCooldown = 0;
		room_goto(UpgradesRoom);
	}
}