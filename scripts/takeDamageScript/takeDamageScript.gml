function takeDamage(damage = 1){
	if (oPlayerManager.iFrames > 0) {
		return;
	}
	oPlayerManager.hp-= damage;
	oPlayerManager.iFrames = 10;
	audio_play_sound(SndHurt,1,0);
}