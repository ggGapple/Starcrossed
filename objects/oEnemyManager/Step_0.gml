leftHpRegenTimer--;
if (leftHpRegenTimer < 0) {
	leftHpRegenTimer = 260;
	leftHp=min(leftHp+1,leftHpMax);
}


if (rightHp<=0) {
	if (oEverythingManager.level == 10) {
		room_goto(WinRoom);
	} else {
		room_goto(UpgradesRoom);
	}
}