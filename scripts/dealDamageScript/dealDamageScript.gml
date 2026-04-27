function dealDamage(dmg, isVampiric = false){
	if (instance_exists(oBlackHole)) {
		oBlackHole.iShouldTakeDamageTimer = 30;
	} else if (instance_exists(oComet)) {
		oComet.iShouldTakeDamageTimer = 30;
	} else if (instance_exists(oBinaryStar)) {
		oBinaryStar.iShouldTakeDamageTimer = 30;
	}
	
	
	if (oPlayerLeft.active) {
		oLeftHealthBar.damageToTake += dmg*oEnemyManager.leftDefense;
		
		if (!isVampiric) {
			oPlayerLeft.attackSpriteTimer = oPlayerLeft.maxAttackSpriteTimer;
			oLeftHealthBar.wiggle +=90;
		} else {
			oLeftHealthBar.wiggle +=30;
		}
		
	} else if (oPlayerRight.active) {
		oRightHealthBar.damageToTake += dmg*oEnemyManager.rightDefense;
		if (!isVampiric) {
			oPlayerRight.attackSpriteTimer = oPlayerRight.maxAttackSpriteTimer;
			oRightHealthBar.wiggle +=90;
		} else {
			oRightHealthBar.wiggle +=30;
		}
		
	}
}