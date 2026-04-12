function createProjectile(projX,projY, dir){
	if (dir == "vertical") {
		if (oPlayerLeft.active) {
				var instanceX = irandom_range(oBoundingBoxLeft.minX, oBoundingBoxLeft.maxX);
				instance_create_depth(instanceX,-1,depth,chooseProjectileVertical());
			} else if (oPlayerRight.active) {
				var instanceX = irandom_range(oBoundingBoxRight.minX, oBoundingBoxRight.maxX);
				instance_create_depth(instanceX,-1,depth,chooseProjectileVertical());
			}	
	} else if (dir == "horizontal") {
		var willItBeRightward = choose(true, false);
		if (willItBeRightward) {
			var inst = instance_create_depth(-1, irandom_range(oBoundingBoxLeft.minY,
			oBoundingBoxLeft.maxY), depth, chooseProjectileHorizontal());
			inst.sprite_index = inst.spriteRight;
		} else {
			var inst = instance_create_depth(room_width+1, irandom_range(oBoundingBoxLeft.minY,
			oBoundingBoxLeft.maxY), depth, chooseProjectileHorizontal());
			inst.rightward = false;
			inst.sprite_index = inst.spriteLeft;
			
		}
	}
}

function chooseProjectileVertical() {
	var options = [oRedProjectileVertical]
	var weights = [10]
	var sum = 10;
	if (oEverythingManager.level >=2) {
		array_push(options,oYellowProjectileVertical);
		array_push(weights,3)
		sum +=3;
	} if (oEverythingManager.level >=3) {
		array_push(options,oSpinningProjectileVertical);
		array_push(weights,2);
		weights[0]+=2;
		sum+=4;
	} if (oEverythingManager.level >= 4) {
		array_push(options,oDiagonalProjectileVertical);
		array_push(weights,3);
		sum+=3;		
	}
	var choice = irandom(sum)
	var curSum = 0;
	for (i = 0; i < array_length(options); i ++ ) {
		curSum += weights[i];	
		if choice <= curSum {
			return options[i];
		}
	}
}

function chooseProjectileHorizontal() {
	var options = [oRedProjectileHorizontal]
	var weights = [10]
	var sum = 10;
	if (oEverythingManager.level >=2) {
		array_push(options,oYellowProjectileHorizontal);
		array_push(weights,3)
		sum +=3;
	} if (oEverythingManager.level >=3) {
		array_push(options,oSpinningProjectileHorizontal);
		array_push(weights,2);
		weights[0]+=2;
		sum+=4;
	} if (oEverythingManager.level >= 4) {
		array_push(options,oDiagonalProjectileHorizontal);
		array_push(weights,3);
		sum+=3;		
	}
	var choice = irandom(sum)
	var curSum = 0;
	for (i = 0; i < array_length(options); i ++ ) {
		curSum += weights[i];	
		if choice <= curSum {
			return options[i];
		}
	}
}