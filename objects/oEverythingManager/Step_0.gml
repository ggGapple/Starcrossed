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