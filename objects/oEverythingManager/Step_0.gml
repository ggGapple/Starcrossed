if (room == CombatRoom and level == 5) {
	bossProjTimer--;
	if (bossProjTimer == 0) {
		if (oEverythingManager.lightyear == 1) {
			instance_create_depth(0,0,-20,oBlackHoleAttack);	
		} else if (oEverythingManager.lightyear == 10) {
			instance_create_depth(0,0,-20,oCometAttack);	
		} else if (oEverythingManager.lightyear == 100) {
			instance_create_depth(0,0,-20,oBinaryAttack);	
		}
		
	}
	if (bossProjTimer < 0 and ((!instance_exists(oBlackHoleAttack) && lightyear == 1 ) || 
	(!instance_exists(oCometAttack) && lightyear == 10)||
	(!instance_exists(oBinaryAttack) && lightyear == 100))) {
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

if (!loadedSettingsYet) {
	loadedSettingsYet = true;
	loadSettings();
	oStartUIManager.menuButtons[0].tooltip = "<- A"
	oStartUIManager.menuButtons[2].tooltip = "D ->"
}