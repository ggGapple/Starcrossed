attackTimer--;

if (attackTimer<= 0 and !doneAttackNotif) {
	audio_play_sound(SndAttackNotif,1,0);
	attackWindow = irandom_range(30,80)*oPlayerManager.attackWindowLength;
	doneAttackNotif = true;
}

if (keyboard_check_pressed(vk_up) and attackWindow < 0) {
	takeDamage(1*oPlayerManager.attackPunishMultiplier);
}


if (attackWindow >= 0) {
	attackWindow--;
	if (keyboard_check_pressed(vk_up)) {
		audio_play_sound(SndAttack,1,0);
		attackWindow = -1;
		dealDamage(oPlayerManager.attackDamage);
	}
	if (attackWindow < 0) {
		attackTimer = irandom_range(30,180)*(1/oPlayerManager.attackFrequency);
		doneAttackNotif = false;
	}
}
