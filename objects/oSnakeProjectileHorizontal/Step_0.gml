if (oPauseManager.paused|| global.freezeBullets) {
	if (image_speed !=0) {
		image_speed = 0;	
	}
	return;	
}
event_inherited();

if ((x > room_width and rightward) or (x < 0 and !rightward)) {
	instance_destroy();
}
if ((x >= room_width/2 and oPlayerRight.active) or (x <= room_width/2 and oPlayerLeft.active)) {
	if (rightward) {
		x+=projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
		image_speed = 1;
	} else {
		x-=projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
		image_speed = -1;
	}
} else {
	image_speed = 0;	
}