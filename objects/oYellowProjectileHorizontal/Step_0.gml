if (oPauseManager.paused) {
	return;	
}
if ((x > room_width and rightward) or (x < 0 and !rightward)) {
	instance_destroy();
}
if ((x >= room_width/2 and oPlayerRight.active) or (x <= room_width/2 and oPlayerLeft.active)) {
	if (rightward) {
		x+=8*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
	} else {
		x-=8*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
	}
}