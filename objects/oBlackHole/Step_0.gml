y = baseY +yOffset*cos(timer/35);
x = xBase + xOffset;
timer++;
switchTimer++;
if (switchTimer == switchWhen) {
	switchTimer = 0;
	image_xscale*=-1
	switchWhen = irandom(300);
}

if (iShouldTakeDamageTimer > 0) {
	xOffset = iShouldTakeDamageTimer*cos(iShouldTakeDamageTimer)/5;	
}
