if (oPauseManager.paused|| global.freezeBullets) {
	if (speed != 0) {
		speed = 0;	
	}
	return;	
}

event_inherited();


if (y > room_height) {
	instance_destroy();
}

if ((x > room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
    speed = projSpeed * 8 * oEnemyManager.leftHp / oEnemyManager.leftHpMax+
	0.5;
} else {
	speed = 0;	
}