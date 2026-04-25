
if (oPauseManager.paused) {
	return;	
}

if (timer >=30) {
	timer--;	
}
else if (timer > -10 and timer < 30) {
	timer--;
	y = lerp(y, tempY+8, 0.1); 

}
else if (timer == -10) {
    timer--;
    y = tempY;
	animDone = true
}

if (fadingTimer == -1 and sprite_index = sButtonChosen) {
	fadingTimer = 20;
	goUp = true;
	tempY = y;
}

if (goUp and fadingTimer > 0) {
	y = lerp(y, tempY-50,0.1);
	fadingTimer--;
	if (fadingTimer ==0) {
		goUp = false;
		fadingTimer = 60;
		tempY = y;
	}
} else if (goUp = false and fadingTimer > 0) {
	y = lerp(y, tempY + 700, 0.05);
}