timerVertical--;
timerHorizontal--;

if (timerVertical < 0) {
	timerVertical = irandom(100);
	if (PlayerLeft.active) {
		var instanceX = irandom_range(BoundingBoxLeft.minX, BoundingBoxLeft.maxX);
		instance_create_depth(instanceX,-1,depth,RedProjectileVertical);
	} else if (PlayerRight.active) {
		var instanceX = irandom_range(BoundingBoxRight.minX, BoundingBoxRight.maxX);
		instance_create_depth(instanceX,-1,depth,RedProjectileVertical);
	}	
}

if (timerHorizontal < 0) {
	timerHorizontal = irandom(120);
	var willItBeRightward = choose(true, false);
	if (willItBeRightward) {
		instance_create_depth(-1, irandom_range(BoundingBoxLeft.minY,
		BoundingBoxLeft.maxY), depth, RedProjectileHorizontal);
	} else {
		var inst = instance_create_depth(room_width+1, irandom_range(BoundingBoxLeft.minY,
		BoundingBoxLeft.maxY), depth, RedProjectileHorizontal);
		inst.rightward = false;
	}
}