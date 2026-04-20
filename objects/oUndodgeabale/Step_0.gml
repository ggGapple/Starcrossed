if (y > room_height) {
	instance_destroy();
}

if ((x >= room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	y+=(oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5) * 0.5;
}

oScreenShake.shakeAmount+=0.2;