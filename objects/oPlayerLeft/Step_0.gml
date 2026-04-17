event_inherited();

if (active) {
	// check bbox
	while (x > oBoundingBoxLeft.maxX) {
		x--;
	}
	while (y + sprite_height/2 > oBoundingBoxLeft.maxY) {
		y--;
	}
	while (x -sprite_width< oBoundingBoxLeft.minX) {
		x++;
	}
	while (y-sprite_height/2 < oBoundingBoxLeft.minY) {
		y++;
	}
}
