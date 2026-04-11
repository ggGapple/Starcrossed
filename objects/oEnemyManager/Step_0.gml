leftHpRegenTimer--;
if (leftHpRegenTimer < 0) {
	leftHpRegenTimer = 260;
	leftHp=min(leftHp+1,leftHpMax);
}


if (rightHp<=0) {
	room_goto(UpgradesRoom);	
}