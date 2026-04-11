if ((x > room_width and rightward) or (x < 0 and !rightward)) {
	instance_destroy();
}
if ((x >= room_width/2 and PlayerRight.active) or (x <= room_width/2 and PlayerLeft.active)) {
	if (rightward) {
		x+=2;
	} else {
		x-=2;
	}
}