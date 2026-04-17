if (instance_exists(oPlayerLeft)) {
	if ((keyboard_check_pressed(vk_left) && oPlayerLeft.active = false) or 
	(oPlayerLeft.active = false and oPlayerRight.active = false)) {
		if (oPlayerRight.active == true) {
			audio_play_sound(SndSwitch,1,0);
		}
		oPlayerLeft.active = true;
		if (oPlayerRight.active == false and !instance_exists(oPlayerTransition)) {
			instance_create_depth(room_width/2,room_height/2,-2,oPlayerTransition);
		}
		oPlayerLeft.sprite_index = sLeft;
		oPlayerRight.sprite_index = sInactiveRight;
		oPlayerRight.active = false;
		oScreenShake.shakeAmount = 5;
		moveVignette();


	} else if (keyboard_check_pressed(vk_right) && oPlayerRight.active = false) {
		audio_play_sound(SndSwitch,1,0);
		oPlayerRight.active = true;
		oPlayerLeft.active = false;
		oPlayerLeft.sprite_index = sInactiveLeft;
		oPlayerRight.sprite_index = sRight;
		oScreenShake.shakeAmount = 5;
		moveVignette();
	}

	if (iFrames > 0) {
		iFrames--;
	}
	
	// death logic
	if (oPlayerManager.hp< 0) {
		oEverythingManager.playerLives--;
		room_goto(DeathRoom);
	}
}
