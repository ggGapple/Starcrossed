attackTimer--;

if (attackTimer == 0) {
	audio_play_sound(SndAttackNotif,1,0);
	attackWindow = irandom_range(30,80);
}

if (keyboard_check_pressed(vk_up) and attackWindow < 0) {
	takeDamage(1);
}

if (attackWindow >= 0) {
	attackWindow--;
	if (keyboard_check_pressed(vk_up)) {
		audio_play_sound(SndAttack,1,0);
		attackWindow = -1;
	}
	if (attackWindow == -1) {
		attackTimer = irandom_range(30,180);
	}
}