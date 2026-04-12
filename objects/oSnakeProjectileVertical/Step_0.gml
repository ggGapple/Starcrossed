if (y > room_height) {
	instance_destroy();
}

if ((x > room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	y+=3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
	image_speed = 1;
} else if (image_speed !=0) {
	image_speed = 0;	
}
