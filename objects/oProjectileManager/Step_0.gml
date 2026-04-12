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
		if (oPlayerLeft.active) {
			var instanceX = irandom_range(oBoundingBoxLeft.minX, oBoundingBoxLeft.maxX);
			instance_create_depth(instanceX,-1,depth,oRedProjectileVertical);
		} else if (oPlayerRight.active) {
			var instanceX = irandom_range(oBoundingBoxRight.minX, oBoundingBoxRight.maxX);
			instance_create_depth(instanceX,-1,depth,oRedProjectileVertical);
		}	
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
		var willItBeRightward = choose(true, false);
		if (willItBeRightward) {
			instance_create_depth(-1, irandom_range(oBoundingBoxLeft.minY,
			oBoundingBoxLeft.maxY), depth, oRedProjectileHorizontal);
		} else {
			var inst = instance_create_depth(room_width+1, irandom_range(oBoundingBoxLeft.minY,
			oBoundingBoxLeft.maxY), depth, oRedProjectileHorizontal);
			inst.rightward = false;
		}
	}


}