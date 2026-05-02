if (oPauseManager.paused|| global.freezeBullets) {
	return;	
}event_inherited();

if ((x > room_width and rightward) or (x < 0 and !rightward)) {
	instance_destroy();
}
if ((x >= room_width/2 and oPlayerRight.active) or (x <= room_width/2 and oPlayerLeft.active)) {
	if (rightward) {
		x+=projSpeed*8*oEnemyManager.leftHp/oEnemyManager.leftHpMax+
	log10(oEverythingManager.lightyear)/2;
	} else {
		x-=projSpeed*8*oEnemyManager.leftHp/oEnemyManager.leftHpMax+
	log10(oEverythingManager.lightyear)/2;
	}
}