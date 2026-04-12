if (keyboard_check_pressed(vk_anykey) and !started) {
	started = true;
	instance_create_depth(0,0,-50,oTransition);
	freeze = true;
}

if (!freeze) {
	animTimer++;
	if (animTimer > 2) {
		animTimer = 0;	
		spriteTimer ++;
		if (spriteTimer > 76 ){ 
			spriteTimer = 0;	
		}
	}
}