if (oPauseManager.paused|| global.freezeBullets) {
	return;	
}
event_inherited();

if (rightward && dir != "right") {
	dir = "right"	
} else if (!rightward && dir != "left") {
	dir = "left"	
}

if ((x > room_width and rightward) or (x < 0 and !rightward)) {
	instance_destroy();
}
if ((x >= room_width/2 and oPlayerRight.active) or (x <= room_width/2 and oPlayerLeft.active)) {
	image_angle+=4;
	image_angle+=4;
	if (image_index != 1) {
		y+=verticalVelocity;
	}
	
	verticalVelocity += a*projSpeed*oEnemyManager.leftHp/oEnemyManager.leftHpMax
	if (rightward) {
		x+=projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
	} else {
		x-=projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
	}
}