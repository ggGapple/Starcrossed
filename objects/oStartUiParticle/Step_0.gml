y-=velocity;
// velocity += acceleration;
if (y < 0) {
	instance_destroy();	
}
image_alpha-=0.005