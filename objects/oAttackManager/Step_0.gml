if (oPauseManager.paused) {
	return;	
}
attackTimer--;


// start attack window, give notif
if ((attackTimer<= 0 and !doneAttackNotif && (oEverythingManager.level != 0||doMoreAttacks)) 
|| (customStartAttack)) {
	if (customStartAttack) {
		customStartAttack = false;	
	}
	audio_play_sound(SndAttackNotif,1,0);
	if (oPlayerLeft.active) {
		attackWindow = irandom_range(30,80)*oPlayerManager.attackWindowLength;
	} else {
		attackWindow = irandom_range(30,80)*oPlayerManager.attackWindowLength;
	}
	doneAttackNotif = true;
}

// if they attack but window is inactive
if (keyboard_check_pressed(vk_up) and attackWindow < 0) {
	if (oPlayerLeft.active) {
		takeDamage(oPlayerManager.attackPunishMultiplier);
	} else {
		takeDamage(oPlayerManager.attackPunishMultiplier);
	}
}

// if window is open
if (attackWindow >= 0) {
	if (oEverythingManager.level !=0) {
		attackWindow--;
	}
	if (instance_exists(oTutorial)) {
		if (oTutorial.attacks == 1) {
			attackWindow--;
		}
	}
	
	if (keyboard_check_pressed(vk_up)) {
		if (instance_exists(oTutorial)) {
			oTutorial.attacks++;	
			doMoreAttacks = false;
		}
		audio_play_sound(SndAttack,1,0);
		attackWindow = -1;
		var critMult = 1;
		if (irandom(99) < oPlayerManager.critPct) {
			critMult = 2;
			audio_play_sound(SndCrit,1,0);
			var activePlayer = oPlayerRight
			if (oPlayerLeft.active) {
				activePlayer = oPlayerLeft
			}
			instance_create_depth(activePlayer.x,activePlayer.y,-9,oCritText);
		}
		dealDamage(oPlayerManager.attackDamage*critMult);

	}
	
	// reset timer
	if (attackWindow < 0) {
		if (oPlayerLeft.active) {
			attackTimer = irandom_range(30,180)*(1/oPlayerManager.attackFrequency);
		} else {
			attackTimer = irandom_range(30,180)*(1/oPlayerManager.attackFrequency);
		}
		doneAttackNotif = false;
	}
}

