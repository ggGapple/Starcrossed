function takeDamage(damage = 1){
	if (oPlayerManager.iFrames > 0) {
		return;
	}
	oPlayerManager.hp-= damage*(1-oPlayerManager.defense);
	oPlayerManager.iFrames = oPlayerManager.maxIFrames;
	audio_play_sound(SndHurt,1,0);
}