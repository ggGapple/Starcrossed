function takeDamage(damage = 1){
	if (oPlayerManager.iFrames > 0) {
		return;
	}
	if (oPlayerLeft.active) {
		oHealthBarManager.damageToTake+= damage/oPlayerManager.defense;
	} else {
		oHealthBarManager.damageToTake+= damage/oPlayerManager.defense;
	}
	if (damage > 0) {
		oHealthBarManager.wiggle += 50;
	}
	
	oPlayerManager.iFrames = oPlayerManager.maxIFrames;
	oScreenShake.shakeAmount+=4;
	if (damage != 0) {
		audio_play_sound(SndHurt,1,0);
	}
	
}