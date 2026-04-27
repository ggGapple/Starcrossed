if (room != StartRoom && keyboard_check_pressed(vk_escape)) {
	paused = !paused;	
	if (paused) {
		instance_create_depth(room_width/2,-1000,depth,oPause);	 
	}
}