function takeDamage(damage = 1){
	if (oPlayerManager.iFrames > 0) {
		return;
	}
	oHealthBarManager.damageToTake+= damage*(1-oPlayerManager.defense);
	oHealthBarManager.wiggle += 50;
	oPlayerManager.iFrames = oPlayerManager.maxIFrames;
	audio_play_sound(SndHurt,1,0);
}