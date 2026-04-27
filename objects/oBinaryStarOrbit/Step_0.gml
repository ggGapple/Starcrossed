if (oPauseManager.paused) {
	return;	
}
angle += orbitSpeed;
if (angle > 360) {
	angle -=360;	
}
y = yBase + lengthdir_y(radius, angle);
x = xBase + lengthdir_x(radius,angle);
timer++;
switchTimer++;
if (switchTimer == switchWhen) {
	switchTimer = 0;
	if (switched){
		switched = -1
		image_xscale*=-1
	} else {
		switched = 1
		image_xscale*=-1	
	}
	switchWhen = irandom(300);
}
if (iShouldTakeDamageTimer > 0) {
	xOffset = iShouldTakeDamageTimer*cos(iShouldTakeDamageTimer)/5;	
}

if (irandom(11)>10) {
	instance_create_depth(x,y,depth,oBinaryParticle);	
}