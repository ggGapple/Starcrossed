event_inherited();

if (active) {
	// check bbox
	while (x-14 + sprite_get_width(sprite_index)*image_xscale > oBoundingBoxLeft.maxX) {
		x--;
	}
	while (y + sprite_get_height(sprite_index)*image_yscale > oBoundingBoxLeft.maxY) {
		y--;
	}
	while (x < oBoundingBoxLeft.minX) {
		x++;
	}
	while (y < oBoundingBoxLeft.minY) {
		y++;
	}
}
