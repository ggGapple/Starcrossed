timer = 30;
if (oEverythingManager.playerLives == 2) {
	fullText = "Hint: the left HP bar controls projectile speed + spawn rate, so get that low for easier dodging!"
} else if (oEverythingManager.playerLives == 1) {
	fullText = "Hint: make sure to utilize your down arrow ability to get out of tough situations!"	
} else {
	fullText = "";	
}
curIndex = 0;
curChar = 0;
textSpeed = 0.5;