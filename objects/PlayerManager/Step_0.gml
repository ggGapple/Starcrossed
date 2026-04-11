if (keyboard_check(vk_left)) {
	PlayerLeft.active = true;
	PlayerRight.active = false;
} else if (keyboard_check(vk_right)) {
	PlayerRight.active = true;
	PlayerLeft.active = false;
}