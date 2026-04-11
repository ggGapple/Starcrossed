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
	
		oPlayerManager.abilityCooldown--;
	
	// ability
	if (keyboard_check_pressed(vk_down) and oPlayerManager.abilityCooldown <=0) {
		oPlayerManager.abilityCooldown = oPlayerManager.abilityCooldownMax;
		if (oPlayerManager.elusive) {
			
			if (keyboard_check(ord("W"))) {
				y -= 50;
			} else if (keyboard_check(ord("A"))) {
				x-=50
			} else if (keyboard_check(ord("D"))) {
				x+=50
			} else {
				y+=50
			}
		} else if (oPlayerManager.violent) {
			var collisions = ds_list_create();
			var num = collision_circle_list(x + sprite_get_width(sprite_index)/2*image_xscale,
			y + sprite_get_height(sprite_index)/2*image_yscale,100,[oRedProjectileHorizontal,
			oRedProjectileVertical], false, true, collisions,false);
			drawExplosion = true;
			explosionTimer = 60;
			for (i = 0; i < num; i++) {
				instance_destroy(collisions[| i]);
			}
			ds_list_destroy(collisions)
			
		} else if (oPlayerManager.peaceful) {
			oPlayerManager.hp = min(oPlayerManager.hp+ 1,oPlayerManager.maxHp);	
		}
	}
}

