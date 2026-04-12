if (instance_exists(oPlayerLeft)) {
	if ((keyboard_check(vk_left) && oPlayerLeft.active = false) or 
	(oPlayerLeft.active = false and oPlayerRight.active = false)) {
		if (oPlayerRight.active == true) {
			audio_play_sound(SndSwitch,1,0);
		}
		oPlayerLeft.active = true;
		oPlayerLeft.sprite_index = sLeft;
		oPlayerRight.sprite_index = sRight;
		oPlayerRight.active = false;
	} else if (keyboard_check(vk_right) && oPlayerRight.active = false) {
		audio_play_sound(SndSwitch,1,0);
		oPlayerRight.active = true;
		oPlayerLeft.active = false;
		oPlayerLeft.sprite_index = sRight;
		oPlayerRight.sprite_index = sLeft;
	}

	if (iFrames > 0) {
		iFrames--;
	}
}
