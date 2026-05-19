if (oPauseManager.paused) {
	return;
}

image_angle ++;
if (oPlayerRight.active) {
	x = lerp(x,oPlayerRight.x,0.1)
	y = lerp(y, oPlayerRight.y,0.1)
} else {
	x = lerp(x,oPlayerLeft.x,
	0.1)
	y = lerp(y, oPlayerLeft.y,0.1)	
}