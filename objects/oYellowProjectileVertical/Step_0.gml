if (oPauseManager.paused) {
	return;	
}
if (y > room_height) {
	instance_destroy();
}

if ((x > room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	y+=projSpeed*8*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
}
