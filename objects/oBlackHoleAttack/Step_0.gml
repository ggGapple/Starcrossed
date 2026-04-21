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
	image_alpha = 1;
	var list = ds_list_create();
	var count = instance_place_list(x, y, all, list, false);
	oScreenShake.shakeAmount+=20;
	audio_play_sound(SndStart,1,0);
	if (count > 0) {
	    for (i = 0; i < count; i++;) {
	        var inst = list[| i];
			var parent = object_get_parent(inst.object_index)
			if (parent != -100) {
				instance_destroy(inst);	
			} else {
				if (oPlayerLeft.active and inst.object_index == oPlayerLeft) {
					takeDamage(5);	
				} else if (oPlayerRight.active and inst.object_index == oPlayerRight) {
					takeDamage(5);
				}
			}
	    }
	}

	ds_list_destroy(list);	
}