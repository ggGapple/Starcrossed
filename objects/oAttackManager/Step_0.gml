
attackTimer--;


// start attack window, give notif
if (attackTimer<= 0 and !doneAttackNotif) {
	audio_play_sound(SndAttackNotif,1,0);
	if (oPlayerLeft.active) {
		attackWindow = irandom_range(30,80)*oPlayerManager.leftAttackWindowLength;
	} else {
		attackWindow = irandom_range(30,80)*oPlayerManager.rightAttackWindowLength;
	}
	doneAttackNotif = true;
}

// if they attack but window is inactive
if (keyboard_check_pressed(vk_up) and attackWindow < 0) {
	if (oPlayerLeft.active) {
		takeDamage(oPlayerManager.leftAttackPunishMultiplier);
	} else {
		takeDamage(oPlayerManager.rightAttackPunishMultiplier);
	}
}

// if window is open
if (attackWindow >= 0) {
	attackWindow--;
	if (keyboard_check_pressed(vk_up)) {
		audio_play_sound(SndAttack,1,0);
		attackWindow = -1;
		if (oPlayerLeft.active) {
			dealDamage(oPlayerManager.leftAttackDamage);
		} else {
			dealDamage(oPlayerManager.rightAttackDamage);
		}
	}
	
	// reset timer
	if (attackWindow < 0) {
		if (oPlayerLeft.active) {
			attackTimer = irandom_range(30,180)*(1/oPlayerManager.leftAttackFrequency);
		} else {
			attackTimer = irandom_range(30,180)*(1/oPlayerManager.rightAttackFrequency);
		}
		doneAttackNotif = false;
	}
}

