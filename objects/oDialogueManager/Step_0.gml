if (display) {
	if (curChar < string_length(fullText)) {
	    curChar += textSpeed;
	}

	if (keyboard_check_pressed(vk_space)) {
		if (curChar < string_length(fullText)) {
			curChar = string_length(fullText)-1;
		} else {
			curChar = 0;
			if (curIndex = array_length(texts) -1) {
				display = false;
				oEverythingManager.doneTutorial = true;
				room_goto(UpgradesRoom);
			} else {
				curIndex++;
				fullText = texts[curIndex];
				if (curIndex==1) {
					oProjectileManager.active = true;	
				}
			}
		}
	}
}

if (oEverythingManager.doneTutorial) {
	oProjectileManager.active = true;
	instance_destroy();
}