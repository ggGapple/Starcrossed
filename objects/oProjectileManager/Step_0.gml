if (active) {
	timerVertical--;
	timerHorizontal--;

	if (timerVertical < 0) {
		timerVertical = irandom(100);
		if (oPlayerLeft.active) {
			var instanceX = irandom_range(oBoundingBoxLeft.minX, oBoundingBoxLeft.maxX);
			instance_create_depth(instanceX,-1,depth,oRedProjectileVertical);
		} else if (oPlayerRight.active) {
			var instanceX = irandom_range(oBoundingBoxRight.minX, oBoundingBoxRight.maxX);
			instance_create_depth(instanceX,-1,depth,oRedProjectileVertical);
		}	
	}

	if (timerHorizontal < 0) {
		timerHorizontal = irandom(120);
		var willItBeRightward = choose(true, false);
		if (willItBeRightward) {
			instance_create_depth(-1, irandom_range(oBoundingBoxLeft.minY,
			oBoundingBoxLeft.maxY), depth, oRedProjectileHorizontal);
		} else {
			var inst = instance_create_depth(room_width+1, irandom_range(oBoundingBoxLeft.minY,
			oBoundingBoxLeft.maxY), depth, oRedProjectileHorizontal);
			inst.rightward = false;
		}
	}


}