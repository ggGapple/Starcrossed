
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

if (upgrader.selected == idx && targetScale != 1.3) {
	targetScale = 1.3;
	image_alpha = 1;
} else if (upgrader.selected != idx && targetScale == 1.3) {
	targetScale = 1;	
	image_alpha = 0.7;
}

image_xscale = lerp(image_xscale,20*targetScale,0.1);
image_yscale = lerp(image_yscale,20*targetScale,0.1);