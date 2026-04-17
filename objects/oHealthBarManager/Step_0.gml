if (wiggle > 0){
	timer++;
	wiggle-=timer/10;
	yOffset = cos(timer)*wiggle/15
} else if (timer > 0){	
	timer = 0;
}

if (damageToTake > 0) {
	damageToTake-=0.1;
	oPlayerManager.hp-=0.1;
}

if (damageToTake == 0 && curHp != oPlayerManager.hp) {
	curHp = oPlayerManager.hp;	
}