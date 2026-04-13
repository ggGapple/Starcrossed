if (room == CombatRoom and level == 5) {
	bossProjTimer--;
	if (bossProjTimer == 0) {
		instance_create_depth(0,0,-20,oBossAttack);	
	}
	if (bossProjTimer < 0 and !instance_exists(oBossAttack)) {
		bossProjTimer = 200;
	}

}