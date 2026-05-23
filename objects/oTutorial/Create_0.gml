if (oEverythingManager.level !=0) {
	oProjectileManager.active = true;
	instance_destroy();	
}
justGl = false;
if (!oEverythingManager.doTutorial || (oEverythingManager.lightyear != 1)) {
	oProjectileManager.active = false;
	justGl = true;
}
done = []
a1 = 0;
a2 = 0;
a3 = 0;
a4 = 0;

didWasd = false;
didRight = false;
didLeft = false;
didAttack = false;
didAttacks = false;
didDown = false;
startedAttack = false;
attacks = 0;

didLeftHp = false;
didRightHp = false;
didFinal = false;
didOGL = false;
