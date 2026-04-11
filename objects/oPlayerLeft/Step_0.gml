// movement
if (active) {
	if (keyboard_check(ord("S"))) {
		y+=3*oPlayerManager.movementSpeed;	
	} if (keyboard_check(ord("W"))) {
		y-=3*oPlayerManager.movementSpeed;	
	}

	if (keyboard_check(ord("D"))) {
		x+=3*oPlayerManager.movementSpeed;	
	}

	if (keyboard_check(ord("A"))) {
		x-=3*oPlayerManager.movementSpeed;	
	}
	
	// check bbox
	while (x + sprite_get_width(sprite_index)*image_xscale > oBoundingBoxLeft.maxX) {
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

	// check bullets
	var _bullet = instance_place(x, y, oBulletParent);
	if (_bullet != noone) {
		takeDamage(_bullet.dmg);
	    instance_destroy(_bullet);
	}
}

