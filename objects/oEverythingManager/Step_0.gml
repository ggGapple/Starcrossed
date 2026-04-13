if (room == CombatRoom and level == 5) {
	bossProjTimer--;
	if (bossProjTimer == 0) {
		instance_create_depth(0,0,-20,oBossAttack);	
	}
	if (bossProjTimer < 0 and !instance_exists(oBossAttack)) {
		bossProjTimer = 200;
	}
}

if (keyboard_check_pressed(ord("P")) and room != StartRoom) {
	difficulty +=0.5;
	if (difficulty > 1.5) {
		difficulty = 0.5;
	}
	dTimer = 180;
}

if (room == DeathRoom) {
	if (keyboard_check_pressed(ord("R"))) {
		game_restart();
	}
	
}

if (room == CombatRoom and !pinged) {
	dTimer = 180;
	pinged = true;
}