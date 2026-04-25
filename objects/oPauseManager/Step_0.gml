if (room != StartRoom && keyboard_check_pressed(vk_escape)) {
	 paused = !paused;	
	 if (!instance_exists(oPause)) {
		instance_create_depth(room_width/2,-1000,depth,oPause);	 
		
	 }
}