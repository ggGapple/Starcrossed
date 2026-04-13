if (active) {
	timerVertical--;
	timerHorizontal--;
	
	var leftHpPercent = oEnemyManager.leftHp/oEnemyManager.leftHpMax
	var baseTimer = lerp(9, 25, 1 - leftHpPercent);

	if (timerVertical < 0) {
		timerVertical = (baseTimer + irandom(4) - oEverythingManager.level);
		if (oEverythingManager.level == 0){
			timerVertical += 10;	
		}
		createProjectile(3,3,"vertical")
	}

	if (timerHorizontal < 0) {
		timerHorizontal = (baseTimer + irandom(4) - oEverythingManager.level);
		if (oEverythingManager.level == 0){
			timerHorizontal += 10;	
		}
		createProjectile(12,1,"horizontal")
	}
}