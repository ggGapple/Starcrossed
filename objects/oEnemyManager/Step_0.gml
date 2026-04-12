leftHpRegenTimer--;
if (leftHpRegenTimer < 0) {
	leftHpRegenTimer = 330;
	leftHp=min(leftHp+1,leftHpMax);
}


if (rightHp<=0) {
	if (oEverythingManager.level == 5) {
		room_goto(WinRoom);
	} else {
		room_goto(UpgradesRoom);
	}
}