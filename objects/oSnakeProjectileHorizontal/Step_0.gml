if ((x > room_width and rightward) or (x < 0 and !rightward)) {
	instance_destroy();
}
if ((x >= room_width/2 and oPlayerRight.active) or (x <= room_width/2 and oPlayerLeft.active)) {
	if (rightward) {
		x+=3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
		image_speed = 1;
	} else {
		x-=3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
		image_speed = -1;
	}
} else {
	image_speed = 0;	
}