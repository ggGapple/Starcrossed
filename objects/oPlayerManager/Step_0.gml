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
		oPlayerRight.sprite_index = sRight;
		oPlayerRight.active = false;
		oCameraManager.shake_amount = 5;

	} else if (keyboard_check_pressed(vk_right) && oPlayerRight.active = false) {
		audio_play_sound(SndSwitch,1,0);
		oPlayerRight.active = true;
		oPlayerLeft.active = false;
		oPlayerLeft.sprite_index = sRight;
		oPlayerRight.sprite_index = sLeft;
		oCameraManager.shake_amount = 5;
	}

	if (iFrames > 0) {
		iFrames--;
	}
}
