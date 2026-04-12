if (active) {
	timerVertical--;
	timerHorizontal--;
	
	if (timerVertical < 0) {
		var hpMultiplier = 1;
		if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.5) {
			hpMultiplier +=0.3
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.65) {
			hpMultiplier += 0.5
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.8) {
			hpMultiplier += 1.0;
		}
		timerVertical = irandom(maxTimer-oEverythingManager.level*40)/(oEnemyManager.leftHp^2)*1/hpMultiplier;
		createProjectile(3,3,"vertical")
	}

	if (timerHorizontal < 0) {
		var hpMultiplier = 1;
		if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.5) {
			hpMultiplier +=0.6
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.65) {
			hpMultiplier += 0.8;
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.8) {
			hpMultiplier += 1.2;
		}
		timerHorizontal = irandom(maxTimer-oEverythingManager.level*40)/(oEnemyManager.leftHp^2)*1/hpMultiplier;
		createProjectile(12,1,"horizontal")
	}


}