// CHEAT CODE
if (keyboard_check(ord("I")) and keyboard_check(ord("Q"))) {
	level = 3;	
	oPlayerManager.rightAttackDamage=10;
	//oPlayerManager.rightAttackDamage=10;

}
if (keyboard_check(ord("B")) and keyboard_check(ord("V"))) {
	level = 5;	
	oPlayerManager.rightAttackDamage=10;
	//oPlayerManager.rightAttackDamage=10;
}

if (keyboard_check(ord("O"))) {
	oProjectileManager.active = true;
}

if (room == CombatRoom and level == 5) {
	bossProjTimer--;
	if (bossProjTimer == 0) {
		instance_create_depth(0,0,-20,oBossAttack);	
	}
	if (bossProjTimer < 0 and !instance_exists(oBossAttack)) {
		bossProjTimer = 120;
	}

}