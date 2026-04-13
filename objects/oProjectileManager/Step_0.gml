if (active) {
	timerVertical--;
	timerHorizontal--;
	
	var leftHpPercent = oEnemyManager.leftHp/oEnemyManager.leftHpMax
	var baseTimer = lerp(7, 30, 1 - leftHpPercent);

	if (timerVertical < 0) {
		timerVertical = (baseTimer + irandom(4) - oEverythingManager.level);
		createProjectile(3,3,"vertical")
	}

	if (timerHorizontal < 0) {
		timerHorizontal = (baseTimer + irandom(4) - oEverythingManager.level);
		createProjectile(12,1,"horizontal")
	}
}