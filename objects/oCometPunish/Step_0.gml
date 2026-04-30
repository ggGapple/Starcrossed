
if (oPauseManager.paused|| global.freezeBullets) {
	return;	
}event_inherited();
if (y > room_height) {
	instance_destroy();
}

if ((x > room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	y+=projSpeed*6*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
	oScreenShake.shakeAmount+=0.018;
	image_speed = 1;
} else {
	image_speed = 0;	
}

