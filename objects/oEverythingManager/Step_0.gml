if (room == CombatRoom and level == 5) {
	bossProjTimer--;
	if (bossProjTimer == 0) {
		instance_create_depth(0,0,-20,oBlackHoleAttack);	
	}
	if (bossProjTimer < 0 and !instance_exists(oBlackHoleAttack)) {
		bossProjTimer = 200;
	}
}

if (keyboard_check_pressed(ord("P")) and room != StartRoom) {
	dIndex++;
	if (dIndex > array_length(difficulties)-1) {
		dIndex = 0;	
	}
	if (difficulty > 1.5) {
		difficulty = 0.5;
	}
	dTimer = 180;
}

if (room == DeathRoom and playerLives <= 0) {
	if (keyboard_check_pressed(ord("R"))) {
		game_restart();
	}
	
}

if (room == CombatRoom and !pinged) {
	dTimer = 180;
	pinged = true;
}
