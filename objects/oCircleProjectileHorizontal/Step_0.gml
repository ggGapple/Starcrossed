if (oPauseManager.paused) {
	return;	
}
if ((x > room_width and rightward) or (x < 0 and !rightward)) {
	instance_destroy();
}
if ((x >= room_width/2 and oPlayerRight.active) or (x <= room_width/2 and oPlayerLeft.active)) {
	if (rightward) {
		x+=projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
		image_angle++;
		spawnTimer--;
	} else {
		x-=projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
		image_angle++;
		spawnTimer--;
	}
}

if (spawnTimer < 0) {
	spawnTimer = 40;
	instance_create_depth(x,
	y,-1,oCircleProjectileResidue);
}