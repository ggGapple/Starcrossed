event_inherited();
dmg = 1;
image_xscale =2;
image_yscale = 2;
horizontalVelocity = irandom_range(-8,8);
a = irandom_range(1,100)/1000;
if (horizontalVelocity >0) {
	a *=-1;
}
dir = "down"