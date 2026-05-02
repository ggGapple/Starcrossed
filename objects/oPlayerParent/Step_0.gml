// movement
if (oPauseManager.paused) {
	return;	
}
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
		if (oPlayerManager.deflective && oPlayerManager.iFrames > 0) {
			dealDamage(1);
			audio_play_sound(SndAttack,1,0);
		}
		else if( (oPlayerManager.armored && oPlayerManager.stillArmored)||
		(oPlayerManager.healArmored && oPlayerManager.stillArmored)){
			oPlayerManager.stillArmored = false;	
			audio_play_sound(SndStart,1,0);
			takeDamage(0);
		} else {
			takeDamage(_bullet.dmg);
		}
		
	    instance_destroy(_bullet);
	}
	
	oPlayerManager.abilityCooldown--;
	
	// ability
	if (keyboard_check_pressed(vk_down) and oPlayerManager.abilityCooldown <=0 and
	(oPlayerManager.elusive || oPlayerManager.violent || oPlayerManager.peaceful)) {
		oPlayerManager.abilityCooldown = oPlayerManager.abilityCooldownMax;
		audio_play_sound(SndAbilityActivate,1,0);
		if (oPlayerManager.elusive) {
			var tpDist = 65;
			if (oPlayerManager.blistering) {
				oPlayerManager.abilityCooldown = 0;
				oPlayerManager.iFrames+=2;
				tpDist +=15;
			} else {
				oPlayerManager.iFrames+=50+oPlayerManager.maxIFrames;
			}

			oPlayerManager.invincibleGood = true;
			if (keyboard_check(ord("W"))) {
				y -= tpDist;
			} else if (keyboard_check(ord("A"))) {
				x-=tpDist

			} else if (keyboard_check(ord("D"))) {
				x+=tpDist
			} else {
				y+=tpDist
			}
		} 
		
		else if (oPlayerManager.violent) {
			var collisions = ds_list_create();
			var num = collision_circle_list(x,
			y,oPlayerManager.explosionRadius*1.1,oProjectileManager.projectiles, 
			false, true, collisions,false);
			drawExplosion = true;
			explosionTimer = 60;
			for (i = 0; i < num; i++) {
				instance_destroy(collisions[| i]);
			}
			ds_list_destroy(collisions)
			if (oPlayerManager.aggressive) {
				dealDamage(1);	
			}
			
		} else if (oPlayerManager.peaceful) {
			oPlayerManager.hp = min(oPlayerManager.hp+ oPlayerManager.healAmount,oPlayerManager.maxHp);	
			if (oPlayerManager.devout) {
				oPlayerManager.healArmored = true;
				oPlayerManager.stillArmored = true;
			} else if (oPlayerManager.twisted) {
				dealDamage(oPlayerManager.healAmount);	
			}
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
		if (oPlayerManager.transcendent && !global.freezeBullets && oPlayerManager.invincibleGood) {
			global.freezeBullets = true;
		}
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
	} else if (oPlayerManager.transcendent && global.freezeBullets) {
		global.freezeBullets = false;
			
	}
} else if 
(oPlayerManager.synergistic && otherSide.drawExplosion && !drawExplosion) {
			var collisions = ds_list_create();
			var num = collision_circle_list(x,
			y,oPlayerManager.explosionRadius*1.1,oProjectileManager.projectiles, 
			false, true, collisions,false);
			drawExplosion = true;
			explosionTimer = 60;
			for (i = 0; i < num; i++) {
				instance_destroy(collisions[| i]);
			}
			ds_list_destroy(collisions)
}

if (explosionTimer <= 0) {
	drawExplosion = false;
}