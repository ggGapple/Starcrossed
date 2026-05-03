if (oPauseManager.paused|| global.freezeBullets) {
	return;	
}
event_inherited();

if ((x > room_width and rightward) or (x < 0 and !rightward)) {
	instance_destroy();
}
if ((x >= room_width/2 and oPlayerRight.active) or (x <= room_width/2 and oPlayerLeft.active)) {
	v+=(projSpeed*oEnemyManager.leftHp/oEnemyManager.leftHpMax+
0.5)*0.045;
	if (rightward) {
		x += v;
	} else {
		x -= v;
	}
}