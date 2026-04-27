if (keyboard_check(ord("B")) and keyboard_check(ord("Y"))) {
	oPlayerManager.rightAttackDamage += 3;	
	oEverythingManager.level = 2;
}

if (keyboard_check(ord("N")) and keyboard_check(ord("L"))) {
	oPlayerManager.rightAttackDamage += 3;	
	oEverythingManager.level =4;
}

if (keyboard_check(ord("H")) and keyboard_check(ord("E"))) {
	oEnemyManager.leftHp = oEnemyManager.leftHpMax;
}

if (keyboard_check(ord("L")) and keyboard_check_pressed(ord("Y"))) {
	oEverythingManager.lightyear*=10
}