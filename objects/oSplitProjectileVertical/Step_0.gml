if (oPauseManager.paused|| global.freezeBullets) {
	return;	
}

event_inherited();


if (y > room_height) {
	instance_destroy();
}

if ((x > room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	y+=projSpeed*2*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
	explodeTimer--;
if (explodeTimer == 0) {
	for (i = 0; i < 6; i++) {
		var proj = instance_create_depth(x,y,depth,oYellowProjectileSplit)
		proj.direction = irandom_range(0,360);
		proj.image_angle = proj.direction;
		
	}
	oScreenShake.shakeAmount += 10;
	audio_play_sound(SndStart,1,0);
	instance_destroy();
}
}

