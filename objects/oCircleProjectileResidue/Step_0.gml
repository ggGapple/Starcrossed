x = lerp(x,targetX,0.1);
y = lerp(y, targetY,0.1);
timer--;
if (timer < 0) {
	instance_destroy();	
}
if (timer < 30) {
	image_alpha = timer/30;	
}