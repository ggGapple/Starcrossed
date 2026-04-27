
if (oPauseManager.paused) {
	return;	
}event_inherited();
if (y > room_height) {
	instance_destroy();
}

if ((x > room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	y+=projSpeed*6*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
}
