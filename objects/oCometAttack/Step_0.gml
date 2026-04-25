if (oPauseManager.paused) {
	return;	
}

if (boomTimer == -1000) {
	image_alpha = lerp(image_alpha,0.45,0.05);
}

if (image_alpha >= 0.40) {
	if (boomTimer == -1000) {
		boomTimer = 25;
	}
}
if (boomTimer > -999) {
	boomTimer --;	
}
if (boomTimer <= -80 and boomTimer > -999) {
	image_alpha = lerp(image_alpha,0,0.1);
	if (image_alpha < 0.2) {
		instance_destroy();	
	}
} if (boomTimer == -80) {
	image_alpha = 0.5;
	oScreenShake.shakeAmount+=20;
	audio_play_sound(SndStart,1,0);
	with (oBulletParent) {
		if (x >= room_width/2 && other.x == oBoundingBoxRight.x) {
			projSpeed = 7;
			dmg = 3;
			if (sprite_index != sSnakeProjectileHorizontal) {
				image_index = 1;
			} else {
				sprite_index = sSnakeProjectileHorizontalBlue	
			}
		} else if (x < room_width/2 && other.x == oBoundingBoxLeft.x) {
			projSpeed = 7;
			dmg = 3;	
			if (sprite_index != sSnakeProjectileHorizontal) {
				image_index = 1;
			} else {
				sprite_index = sSnakeProjectileHorizontalBlue	
			}
		}

	}

}