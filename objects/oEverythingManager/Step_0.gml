if (room == CombatRoom and level == 5) {
	bossProjTimer--;
	if (bossProjTimer == 0) {
		instance_create_depth(0,0,-20,oBlackHoleAttack);	
	}
	if (bossProjTimer < 0 and !instance_exists(oBlackHoleAttack)) {
		bossProjTimer = 200;
	}
}

if (incrementDifficulty) {
	dIndex++;
	if (dIndex > array_length(difficulties)-1) {
		dIndex = 0;	
	}
	incrementDifficulty = false;
} else if (decrementDifficulty) {
	dIndex--;
	if (dIndex < 0) {
		dIndex = array_length(difficulties)-1;	
	}
	decrementDifficulty = false;
}

if (room == DeathRoom and playerLives <= 0) {
	if (keyboard_check_pressed(ord("R"))) {
		game_restart();
	}
	
}
