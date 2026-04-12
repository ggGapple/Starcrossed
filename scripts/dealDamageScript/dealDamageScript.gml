function dealDamage(dmg){
	if (oPlayerLeft.active) {
		oLeftHealthBar.damageToTake = dmg*oEnemyManager.leftDefense;
		oLeftHealthBar.wiggle +=90;
	} else if (oPlayerRight.active) {
		oRightHealthBar.damageToTake= dmg*oEnemyManager.rightDefense;
		oRightHealthBar.wiggle +=90;
	}
}