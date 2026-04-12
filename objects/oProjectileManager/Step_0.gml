if (active) {
	timerVertical--;
	timerHorizontal--;
	show_debug_message(active)
	if (timerVertical < 0) {
		var hpMultiplier = 1;
		if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.5) {
			hpMultiplier +=0.2
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.65) {
			hpMultiplier += 0.6
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.8) {
			hpMultiplier += 1.00;
		}
<<<<<<< Updated upstream
		timerVertical = irandom(maxTimer-oEverythingManager.level*40)/((oEnemyManager.leftHp*2)^2 + 1)/hpMultiplier;
=======
		timerVertical = irandom(maxTimer-oEverythingManager.level*40)/
		(oEnemyManager.leftHp^2+0.1)*1/hpMultiplier;
>>>>>>> Stashed changes
		createProjectile(3,3,"vertical")
	}

	if (timerHorizontal < 0) {
		var hpMultiplier = 1;	
		if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.5) {
			hpMultiplier += 0.2
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.65) {
			hpMultiplier += 0.6;
		} if (oEnemyManager.leftHp/oEnemyManager.leftHpMax>0.8) {
			hpMultiplier += 1.00;
		}
<<<<<<< Updated upstream
		timerHorizontal = irandom(maxTimer-oEverythingManager.level*40)/((oEnemyManager.leftHp*2)^2 + 1)/hpMultiplier;
=======
		timerHorizontal = irandom(maxTimer-oEverythingManager.level*40)/
		(oEnemyManager.leftHp^2+0.1)*1/hpMultiplier;
>>>>>>> Stashed changes
		createProjectile(12,1,"horizontal")
	}


}
show_debug_message(timerVertical);