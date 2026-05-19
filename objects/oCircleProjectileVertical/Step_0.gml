

if (oPauseManager.paused|| global.freezeBullets) {
	return;	
}


if (y > room_height) {
	instance_destroy();
}
event_inherited();
if ((x > room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	y+=projSpeed*3*oEnemyManager.leftHp/oEnemyManager.leftHpMax+
0.5;
	image_angle++;
	spawnTimer--;
}
if (spawnTimer < 0) {
	spawnTimer = 40;
	instance_create_depth(x,
	y,-1,oCircleProjectileResidue);
}