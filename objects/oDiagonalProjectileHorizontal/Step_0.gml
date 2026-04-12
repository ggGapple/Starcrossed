if ((x > room_width and rightward) or (x < 0 and !rightward)) {
	instance_destroy();
}
if ((x >= room_width/2 and oPlayerRight.active) or (x <= room_width/2 and oPlayerLeft.active)) {
	if (rightward) {
		x+=2*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
	} else {
		x-=2*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
	} y-=2*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
}

if (rightward = true and image_angle == 45) {
	image_angle = -45;	
}