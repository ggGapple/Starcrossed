function dealDamage(dmg){
	if (oPlayerLeft.active) {
		oLeftHealthBar.damageToTake = dmg*oEnemyManager.leftDefense;
		oLeftHealthBar.wiggle +=90;
		oPlayerLeft.attackSpriteTimer = oPlayerLeft.maxAttackSpriteTimer;
	} else if (oPlayerRight.active) {
		oRightHealthBar.damageToTake= dmg*oEnemyManager.rightDefense;
		oRightHealthBar.wiggle +=90;
		oPlayerRight.attackSpriteTimer = oPlayerRight.maxAttackSpriteTimer;
	}
}