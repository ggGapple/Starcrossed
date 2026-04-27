if (((image_index == 1 && sprite_index != sSnakeProjectileHorizontal)||
(sprite_index == sSnakeProjectileHorizontalBlue))
&& sprite_index != sBallProjectileResidue) {
	if (lastX == x and lastY == y) {
		x = lastX + irandom_range(-1,1);
		y = lastY + irandom_range(-1,1);
	}

	lastX = x;
	lastY = y;
}