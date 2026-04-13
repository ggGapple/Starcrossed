y = baseY +yOffset*cos(timer/35);
timer++;
switchTimer++;
if (switchTimer == switchWhen) {
	switchTimer = 0;
	image_xscale*=-1
	switchWhen = irandom(300);
}