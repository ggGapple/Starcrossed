function dealDamage(dmg){
	if (oPlayerLeft.active) {
		oEnemyManager.leftHp= max(0,oEnemyManager.leftHp-dmg*oEnemyManager.leftDefense);
	} else if (oPlayerRight.active) {
		oEnemyManager.rightHp= max(0,oEnemyManager.rightHp-dmg*oEnemyManager.rightDefense);
	}
}