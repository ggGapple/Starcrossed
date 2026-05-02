event_inherited();
rightward = true;
dmg = 1;
spriteLeft = sShuriken;
spriteRight = sShuriken;

image_xscale =2;
image_yscale = 2;

verticalVelocity = irandom_range(-8,8);
a = irandom_range(1,100)/1000;
if (verticalVelocity >0) {
	a *=-1;
}