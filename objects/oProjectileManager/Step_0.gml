if (active) {
	timerVertical--;
	timerHorizontal--;
	
	if (timerVertical < 0) {
		var hpMultiplier = 1;
		if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.5) {
			hpMultiplier +=0.5
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.65) {
			hpMultiplier += 0.4;
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.8) {
			hpMultiplier += 0.4;
		}
		timerVertical = irandom(maxTimer)/(oEnemyManager.leftHp^2)*1/hpMultiplier;
		createProjectile(3,3,"vertical")
	}

	if (timerHorizontal < 0) {
		var hpMultiplier = 1;
		if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.5) {
			hpMultiplier +=0.5
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.65) {
			hpMultiplier += 0.4;
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.8) {
			hpMultiplier += 0.4;
		}
		timerHorizontal = irandom(maxTimer)/(oEnemyManager.leftHp^2)*1/hpMultiplier;
		createProjectile(12,1,"horizontal")
	}


}