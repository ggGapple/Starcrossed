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
				oProjectileManager.active = true;
				display = false;
			} else {
				curIndex++;
				fullText = texts[curIndex];	
			}
		}
	}
}