if (active && !oPauseManager.paused) {
	timerVertical--;
	timerHorizontal--;
	
	var leftHpPercent = oEnemyManager.leftHp/oEnemyManager.leftHpMax
	var baseTimer = lerp(10, 30, 1 - leftHpPercent);

	if (timerVertical < 0) {
		timerVertical = (baseTimer + irandom(4) - 1.25*oEverythingManager.level)/(
		oEverythingManager.difficulties[oEverythingManager.dIndex]*
		log10(oEverythingManager.lightyear*10));
		if (oEverythingManager.level == 0){
			timerVertical += 10;	
		}
		createProjectile(3,3,"vertical")
	}

	if (timerHorizontal < 0) {
		timerHorizontal = (baseTimer + irandom(4) - 1.25*oEverythingManager.level)/
		oEverythingManager.difficulties[oEverythingManager.dIndex];
		if (oEverythingManager.level == 0){
			timerHorizontal += 10;	
		}
		createProjectile(12,1,"horizontal")
	}
	if (oEnemyManager.leftHp >=oEnemyManager.leftHpMax && oEverythingManager.level > 0) {
		undodgeableTimer--;
	}
	
	if (undodgeableTimer < 0) {
		undodgeableTimer = maxUndodgeableTimer;
		createProjectile(12,1,"vertical",true);
	}
}