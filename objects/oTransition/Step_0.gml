


timer++; 

if (timer == 60) {
	leftX -=25;
	rightX +=25;
}

if (timer > 120) {
	image_alpha+=0.01;
	if (image_alpha ==1) {
		room_goto_next();	
		instance_destroy();
	}
}