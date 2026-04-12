// movement

if (active) {
	//die
	if (oPlayerManager.hp< 0) {
		oEverythingManager.playerLives--;
		room_goto(DeathRoom);
	}


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
	while (x + sprite_get_width(sprite_index)*image_xscale > oBoundingBoxRight.maxX) {
		x--;
	}
	while (y + sprite_get_height(sprite_index)*image_yscale > oBoundingBoxRight.maxY) {
		y--;
	}
	while (x < oBoundingBoxRight.minX) {
		x++;
	}
	while (y < oBoundingBoxRight.minY) {
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
	if ((keyboard_check_pressed(vk_down) and oPlayerManager.abilityCooldown <=0) and
	(oPlayerManager.elusive | oPlayerManager.violent | oPlayerManager.peaceful)) {
		oPlayerManager.abilityCooldown = oPlayerManager.abilityCooldownMax;
		audio_play_sound(SndAbilityActivate,1,0);
		if (oPlayerManager.elusive) {
			
			if (keyboard_check(ord("W"))) {
				y -= 65;
			} else if (keyboard_check(ord("A"))) {
				x-=65
			} else if (keyboard_check(ord("D"))) {
				x+=65
			} else {
				y+=65
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
	
	// flash during attack
	if (attackSpriteTimer >= 0) {
		attackSpriteTimer--;
		sprite_index = sPlayerAttack;
		if (attackSpriteTimer==-1) {
			sprite_index = sLeft;	
		}
	}
	
	// flash during i frames
	
	if (oPlayerManager.iFrames > 0) {
		if (oPlayerManager.iFrames ==1) {
			sprite_index = sLeft;
		} else {
			sprite_index = sPlayerInvincible;	
		}
	}


}