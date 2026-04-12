image_alpha = lerp(image_alpha,0.7,0.05);
if (image_alpha >= 0.65) {
	if (boomTimer == -1000) {
		boomTimer = 60;
	}
	boomTimer --;
}

if (boomTimer < -160 and boomTimer > -999) {
	image_alpha = lerp(image_alpha,0,0.05);
	if (image_alpha < 0.1) {
		instance_destroy();	
	}
} if (boomTimer == -159) {
	image_alpha = 1;
	var list = ds_list_create();
	var count = instance_place_list(x, y, all, list, false);

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