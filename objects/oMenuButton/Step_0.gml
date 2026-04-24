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

if (keyboard_check_pressed(vk_left) && text == "Classic" && oStartUIManager.menu == 1 && selected) {
	oEverythingManager.decrementDifficulty = true;
	audio_play_sound(SndDialogueNext,1,0);
} else if (keyboard_check_pressed(vk_right) && text == "Classic" && oStartUIManager.menu == 1 && selected) {
	oEverythingManager.incrementDifficulty = true;
	audio_play_sound(SndDialogueNext,1,0);
}



if (fadingTimer == -1 and oStartUIManager.started) {
	goFadeTimer--;
}
if (goFadeTimer < -1) {
	y = lerp(y,room_height+100,0.1);	
}
