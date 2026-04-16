// movement
if (active) {

	if (keyboard_check(ord("S"))) {
		y+=3*moveSpeed;	
	} if (keyboard_check(ord("W"))) {
		y-=3*moveSpeed;	
	}

	if (keyboard_check(ord("D"))) {
		x+=3*moveSpeed;	
	}

	if (keyboard_check(ord("A"))) {
		x-=3*moveSpeed;	
	}
	

	// check bullets
	var _bullet = instance_place(x, y, oBulletParent);
	if (_bullet != noone) {
		takeDamage(_bullet.dmg);
	    instance_destroy(_bullet);
	}
	
	oPlayerManager.abilityCooldown--;
	
	// ability
	if (keyboard_check_pressed(vk_down) and oPlayerManager.abilityCooldown <=0 and
	(oPlayerManager.elusive || oPlayerManager.violent || oPlayerManager.peaceful)) {
		oPlayerManager.abilityCooldown = oPlayerManager.abilityCooldownMax;
		audio_play_sound(SndAbilityActivate,1,0);
		if (oPlayerManager.elusive) {
			oPlayerManager.iFrames+=60;
			oPlayerManager.invincibleGood = true;
			if (keyboard_check(ord("W"))) {
				y -= 65;
			} else if (keyboard_check(ord("A"))) {
				x-=65

			} else if (keyboard_check(ord("D"))) {
				x+=65
			} else {
				y+=65
			}
		} 
		
		else if (oPlayerManager.violent) {
			var collisions = ds_list_create();
			var num = collision_circle_list(x + sprite_width/2,
			y + sprite_height/2,105,oProjectileManager.projectiles, 
			false, true, collisions,false);
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
		sprite_index = attackSprite;
		if (attackSpriteTimer==-1) {
			sprite_index = activeSprite;
		}
	}
	
	// flash during i frames
	if (oPlayerManager.iFrames > 0) {
		if (oPlayerManager.invincibleGood) {
			if (oPlayerManager.iFrames ==1) {
				sprite_index = activeSprite;
				oPlayerManager.invincibleGood = false;
			} else {
				sprite_index = invincibleTpSprite;
			}	
		} else {
			if (oPlayerManager.iFrames ==1) {
				sprite_index = activeSprite;
			} else {
				sprite_index = invincibleSprite;
			}
		}
	}
}
