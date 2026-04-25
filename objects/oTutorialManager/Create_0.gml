curIndex = 0;
curChar = 0;

textSpeed = 0.5;

display = true;

if (oEverythingManager.doTutorial) {
	texts = [
	"Welcome to Starcrossed!",
	"Move and dodge with WASD.",
	"Use arrow keys to swap between the two half stars.",
	"ONLY HALF of the screen will remain active at a time.",
	"When a ' ! ' appears, press UP arrow to attack the side you're on!",
	"Left HP bar is enemy strength,",
	"which controls spawn rates, projectile speed, and enemy attacks",
	"Right HP bar is enemy HP. Get that to 0 to win!",
	"Good luck!"
	]
} else {
	texts = ["Are you ready?"]
}

fullText = texts[curIndex];

done = false;
doneTimer = 0;