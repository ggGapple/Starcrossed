
if (oPauseManager.paused|| global.freezeBullets) {
	return;	
}
if (((image_index == 1 && sprite_index != sSnakeProjectileHorizontal)||
(sprite_index == sSnakeProjectileHorizontalBlue))
&& sprite_index != sBallProjectileResidue) {
	if (lastX != x) {
		lastX = x;
		return;
	}
	lastX = x;
	if (abs(storeX -x)>4 or abs(storeY -y)>4) {
		storeX = x;
		storeY = y;
	}

	x = storeX+irandom_range(-2,2);
	y = storeY + irandom_range(-2,2);
} 