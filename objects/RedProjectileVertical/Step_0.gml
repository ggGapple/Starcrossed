if (y > room_height) {
	instance_destroy();
}

if ((x > room_width/2 and PlayerRight.active) or (x < room_width/2 and PlayerLeft.active)) {
	y+=2;
}
