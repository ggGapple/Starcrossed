
if (oPauseManager.paused|| global.freezeBullets) {
	return;	
}event_inherited();

if (dir ==0) {
	if (rightward) {
		dir = "right"
	} else { 
		 dir = "left"
	}
}
if ((x > room_width and rightward) or (x < 0 and !rightward)) {
	instance_destroy();
}
if ((x >= room_width/2 and oPlayerRight.active) or (x <= room_width/2 and oPlayerLeft.active)) {
	if (rightward) {
		x+=projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+
0.5;
	} else {
		x-=projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+
0.5;
	} 
	if (image_index != 1) {
		y+=upOrDown*(projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5);
	}

}

if ((rightward = true and image_angle == 45 && upOrDown == -1) ||
		(rightward == false and image_angle == 45 && upOrDown == 1)){
	image_angle = -45;	
}