if (instance_exists(oPlayerLeft)) {
	if (keyboard_check(vk_left) or (oPlayerLeft.active = false and oPlayerRight.active = false)) {
		oPlayerLeft.active = true;
		oPlayerRight.active = false;
	} else if (keyboard_check(vk_right)) {
		oPlayerRight.active = true;
		oPlayerLeft.active = false;
	}

	if (iFrames > 0) {
		iFrames--;
	}
}
