
if (oPauseManager.paused) {
	return;	
}
event_inherited();

if (y > room_height) {
	instance_destroy();
}

if ((x >= room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	y+=(projSpeed*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5) * 0.5;
	oScreenShake.shakeAmount+=0.25;
	image_speed = 1;
		spriteTimer+=spriteDirection;
	if (spriteTimer == 0 || spriteTimer == 100) {
		spriteDirection *= -1	
	}
} else {
	image_speed = 0;	
}