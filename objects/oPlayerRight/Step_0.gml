event_inherited();

if (active) {
	// check bbox
	while (x + sprite_get_width(sprite_index)*image_xscale > oBoundingBoxRight.maxX) {
		x--;
	}
	while (y + sprite_get_height(sprite_index)*image_yscale > oBoundingBoxRight.maxY) {
		y--;
	}
	while (x+16 < oBoundingBoxRight.minX) {
		x++;
	}
	while (y < oBoundingBoxRight.minY) {
		y++;
	}
}