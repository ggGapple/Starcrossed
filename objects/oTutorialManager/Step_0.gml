// return;
if (oPauseManager.paused) {
	return;
}
	
if (display) {
	if (curChar < string_length(fullText)) {
	    curChar += textSpeed;
	}

	if (keyboard_check_pressed(vk_space)) {
		if (curChar < string_length(fullText)) {
			curChar = string_length(fullText)-1;
		} else {
			curChar = 0;
			doneTimer = 0;
			done = false;
			if (curIndex = array_length(texts) -1) {
				display = false;
				oEverythingManager.doneTutorial = true;
				room_goto(UpgradesRoom);
			} else {
				curIndex++;
				fullText = texts[curIndex];
				audio_play_sound(SndDialogueNext, 0.5, 0)
				if (curIndex==1) {
					oProjectileManager.active = true;	
				} else if (curIndex == 3) {
					oProjectileManager.active = false;	
				}
			}
		}
	}
}

if (oEverythingManager.level != 0) {
	oProjectileManager.active = true;
	instance_destroy();
}

if (!done && curChar == string_length(fullText)-1) {
	done = true;
}
if (done) {
	doneTimer++;	
}

if (doneTimer == 180) {
	fullText = fullText + " [space]";
}