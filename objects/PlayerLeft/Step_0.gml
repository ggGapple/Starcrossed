// movement
if (active) {
	if (keyboard_check(ord("S"))) {
		y+=3;	
	} if (keyboard_check(ord("W"))) {
		y-=3;	
	}

	if (keyboard_check(ord("D"))) {
		x+=3;	
	}

	if (keyboard_check(ord("A"))) {
		x-=3;	
	}
	
	// check bbox
	while (x + sprite_get_width(sprite_index) > BoundingBoxLeft.maxX) {
		x--;
	}
	while (y + sprite_get_height(sprite_index) > BoundingBoxLeft.maxY) {
		y--;
	}
	while (x < BoundingBoxLeft.minX) {
		x++;
	}
	while (y < BoundingBoxLeft.minY) {
		y++;
	}

	// check bullets
	var _bullet = instance_place(x, y, oBulletParent);
	if (_bullet != noone) {
	    instance_destroy(_bullet);
	}
}

