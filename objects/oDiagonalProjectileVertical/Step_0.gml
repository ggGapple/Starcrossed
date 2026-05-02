
if (oPauseManager.paused|| global.freezeBullets) {
	return;	
}
event_inherited();
if (y > room_height) {
	instance_destroy();
}

if ((x > room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	y+=projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+
0.5;
	x += rightward * (projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+
0.5);
}


if (rightward = -1 and image_angle == 45) {
	image_angle = -45;	
}