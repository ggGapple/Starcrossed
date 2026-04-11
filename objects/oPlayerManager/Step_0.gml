if (keyboard_check(vk_left)) {
	oPlayerLeft.active = true;
	oPlayerRight.active = false;
} else if (keyboard_check(vk_right)) {
	oPlayerRight.active = true;
	oPlayerLeft.active = false;
}

if (iFrames > 0) {
	iFrames--;
}