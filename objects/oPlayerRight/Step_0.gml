event_inherited();

if (active) {
	// check bbox
	while (x+sprite_width > oBoundingBoxRight.maxX) {
		x--;
	}
	while (y + sprite_height/2 > oBoundingBoxRight.maxY) {
		y--;
	}
	while (x < oBoundingBoxRight.minX) {
		x++;
	}
	while (y - sprite_height/2 < oBoundingBoxRight.minY) {
		y++;
	}
}