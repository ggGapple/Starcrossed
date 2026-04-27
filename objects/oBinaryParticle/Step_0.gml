if (oPauseManager.paused) {
	return;	
}
if (velocityX > 0 ) {
	velocityX-=0.1;
}
if (velocityY > 0 ) {
	velocityY-=0.1;
}

lifeTimer-=0.1;

x+=velocityX*dx;
y-=velocityY*dy;
if ((x > display_get_gui_width() && y < 0) || lifeTimer <=0) {
	instance_destroy();	
}

if (sprite_index == 3) {
	image_speed = 0;	
}
