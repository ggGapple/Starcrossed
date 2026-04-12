if (keyboard_check_pressed(vk_anykey) and oEverythingManager.playerLives>0 and timer ==0) {
	room_goto(CombatRoom);	
}

if (timer > 0) {
	timer--;
}