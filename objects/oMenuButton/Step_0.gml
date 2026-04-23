if (timer >=30) {
	timer--;	
}
else if (timer > -10 and timer < 30) {
	timer--;
	y = lerp(y, tempY+8, 0.1); 

}
else if (timer == -10) {
    timer--;
    y = tempY;
	animDone = true
}

if (keyboard_check_pressed(vk_left) && text != "Back" && oStartUIManager.menu == 1) {
	oEverythingManager.decrementDifficulty = true;
} else if (keyboard_check_pressed(vk_right) && text != "Back" && oStartUIManager.menu == 1) {
	oEverythingManager.incrementDifficulty = true;
}



if (fadingTimer == -1 and oStartUIManager.started) {
	goFadeTimer--;
}
if (goFadeTimer < -1) {
	y = lerp(y,room_height+100,0.1);	
}
		