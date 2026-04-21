x+=velocity;
y-=velocity;
velocity += acceleration;
if ((x > display_get_gui_width() && y < 0)) {
	instance_destroy();	
}