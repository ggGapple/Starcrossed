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
	while (x + sprite_get_width(sprite_index) > oBoundingBoxLeft.maxX) {
		x--;
	}
	while (y + sprite_get_height(sprite_index) > oBoundingBoxLeft.maxY) {
		y--;
	}
	while (x < oBoundingBoxLeft.minX) {
		x++;
	}
	while (y < oBoundingBoxLeft.minY) {
		y++;
	}

	// check bullets
	var _bullet = instance_place(x, y, oBulletParent);
	if (_bullet != noone) {
		takeDamage(_bullet.dmg);
	    instance_destroy(_bullet);
	}
}

