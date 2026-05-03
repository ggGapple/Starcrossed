if (active && !oPauseManager.paused) {
	timerVertical--;
	timerHorizontal--;
	
	var leftHpPercent = oEnemyManager.leftHp/oEnemyManager.leftHpMax
	var baseTimer = lerp(10, 38, 1 - leftHpPercent);
	if (oEverythingManager.level == 5 && oEverythingManager.lightyear == 1) {
		baseTimer = lerp(7, 28, 1 - leftHpPercent);
	}

	if (timerVertical < 0) {
		timerVertical = (baseTimer + irandom(4) - oEverythingManager.level
		*logn(10,oEverythingManager.lightyear*10))/(
		oEverythingManager.difficulties[oEverythingManager.dIndex]);
		if (oEverythingManager.level == 0){
			timerVertical += 10;	
		}
		createProjectile(3,3,"vertical")
	}

	if (timerHorizontal < 0) {
		timerHorizontal = (baseTimer + irandom(4) - oEverythingManager.level
		*logn(10,oEverythingManager.lightyear*10))/(
		oEverythingManager.difficulties[oEverythingManager.dIndex]);
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