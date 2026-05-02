if (oPauseManager.paused|| global.freezeBullets) {
	return;	
}event_inherited();


if (y > room_height) {
	instance_destroy();
}

if ((x > room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	v+=(projSpeed*oEnemyManager.leftHp/oEnemyManager.leftHpMax+
0.05);
	y+=v
}
