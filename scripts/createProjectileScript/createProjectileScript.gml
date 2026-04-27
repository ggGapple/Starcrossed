function createProjectile(projX,projY, dir, undodgeable = false){
	// proj x and proj y are deprecated and never used but im too lazy to fix it everywhere else
	if (dir == "vertical") {
		if (undodgeable) {
			if (oEverythingManager.lightyear == 1) {
				var proj = oBlackHolePunish;
			} else if (oEverythingManager.lightyear == 10) {
				var proj = oCometPunish;	
			} else if (oEverythingManager.lightyear == 100) {
				var proj = oBinaryPunish;	
			}
			if (oPlayerLeft.active && oEverythingManager.lightyear == 1) {
				var instanceX =0;
			} else if (oEverythingManager.lightyear == 1){
				var instanceX = room_width/2;
			} else {
				if (oPlayerLeft.active) {
					var instanceX = irandom_range(oBoundingBoxLeft.minX, oBoundingBoxLeft.maxX);
				} else if (oPlayerRight.active) {
					var instanceX = irandom_range(oBoundingBoxRight.minX, oBoundingBoxRight.maxX);
				}
			}
		} else {
			var proj = chooseProjectileVertical();
			if (oPlayerLeft.active) {
				var instanceX = irandom_range(oBoundingBoxLeft.minX, oBoundingBoxLeft.maxX);
			} else if (oPlayerRight.active) {
				var instanceX = irandom_range(oBoundingBoxRight.minX, oBoundingBoxRight.maxX);
			}
		}
		var instanceY = -5;
		if (proj == oSnakeProjectileVertical) {
			instanceY-=90
		}

		instance_create_depth(instanceX,instanceY,depth,proj);
	} else if (dir == "horizontal") {
		var willItBeRightward = choose(true, false);
		var proj = chooseProjectileHorizontal();
		if (willItBeRightward) {
			var instanceX = -10;
			if (proj == oSnakeProjectileHorizontal || proj == oSpinningProjectileHorizontal) {
				instanceX -= 90
			}
			var inst = instance_create_depth(instanceX, irandom_range(oBoundingBoxLeft.minY,
			oBoundingBoxLeft.maxY), depth, proj);
			inst.sprite_index = inst.spriteRight;
		} else {
			var instanceX = room_width+10;
			if (proj == oSnakeProjectileHorizontal || proj == oSpinningProjectileHorizontal) {
				instanceX += 90
			}
			var inst = instance_create_depth(instanceX, irandom_range(oBoundingBoxLeft.minY,
			oBoundingBoxLeft.maxY), depth, proj);
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
		array_push(weights,1);
		weights[0]+=2;
		sum+=3;
	} if (oEverythingManager.level >= 4) {
		array_push(options,oDiagonalProjectileVertical);
		array_push(weights,3);
		sum+=3;		
	} if (oEverythingManager.level >= 5) {
		if (oEverythingManager.seed1 == 1){
			array_push(options,oCircleProjectileVertical);
		} else {
			array_push(options,oSnakeProjectileVertical);
		}
		array_push(weights,1);
		weights[0]+= 2;
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
		array_push(weights,1);
		weights[0]+=2;
		sum+=3;
	} if (oEverythingManager.level >= 4) {
		array_push(options,oDiagonalProjectileHorizontal);
		array_push(weights,3);
		sum+=3;		
	} if (oEverythingManager.level >= 5) {
		if (oEverythingManager.seed1 == 1){
			array_push(options,oCircleProjectileHorizontal);
		} else {
			array_push(options,oSnakeProjectileHorizontal);
		}
		array_push(weights,1);
		weights[0]+= 2;
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