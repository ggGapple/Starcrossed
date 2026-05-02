if (oPauseManager.paused) {
	image_speed = 0;
	return;	
} else if (image_speed == 0) {
	image_speed = 1;	
}

x+=velocity;
y-=velocity;
velocity += acceleration;
if ((x > display_get_gui_width() && y < 0)) {
	instance_destroy();	
}