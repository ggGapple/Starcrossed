function takeDamage(damage = 1){
	if (oPlayerManager.iFrames > 0) {
		return;
	}
	if (oPlayerLeft.active) {
		oHealthBarManager.damageToTake+= damage/oPlayerManager.leftDefense;
	} else {
		oHealthBarManager.damageToTake+= damage/oPlayerManager.rightDefense;
	}
	
	oHealthBarManager.wiggle += 50;
	oPlayerManager.iFrames = oPlayerManager.maxIFrames;
	oScreenShake.shakeAmount+=4;
	audio_play_sound(SndHurt,1,0);
}