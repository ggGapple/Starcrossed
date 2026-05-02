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
		if (proj == oSnakeProjectileVertical || proj == oSpinningProjectileVertical) {
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
	var absoluteLevel = oEverythingManager.level + (log10(oEverythingManager.lightyear*10)-1)*5
	var options = [];
	var weights = [];
	var bulletLevels = [2,3,4,5,6,8,9,10,12,13,15]
	var diagonalLevels = [3,5,7,8,9,10,14,15]
	var virusLevels=[6,7,8,10,13,14,15]
	var dustyLevels = [4,5,8,10,12,13,15]
	var splitterLevels = [13,14,15]
	var accelerantLevels = [11,12,13,15]
	var shurikenLevels = [9,10,11,13,14,15]
	var expanderLevels = [7,8,9,10,13,15]
	var snakeLevels = [9,10,12,14,15]
	var sum = 0
	if (absoluteLevel != 11) {
		options = [oRedProjectileVertical]
		weights = [10]
		sum = 10;
	}
	

	if (array_contains(bulletLevels,absoluteLevel)) {
		array_push(options,oYellowProjectileVertical);
		array_push(weights,3)
		sum +=3;
	} 
	
	if (array_contains(diagonalLevels,absoluteLevel)) {
		array_push(options,oDiagonalProjectileVertical);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(virusLevels,absoluteLevel)) {
		array_push(options,oSpinningProjectileVertical);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(dustyLevels,absoluteLevel)) {
		array_push(options,oCircleProjectileVertical);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(splitterLevels,absoluteLevel)) {
		array_push(options,oSplitProjectileVertical);
		array_push(weights,1)
		sum +=1;
	} 
	
	if (array_contains(accelerantLevels,absoluteLevel)) {
		array_push(options,oAccelerativeVertical);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(shurikenLevels,absoluteLevel)) {
		array_push(options,oShurikenVertical);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(snakeLevels,absoluteLevel)) {
		array_push(options,oSnakeProjectileVertical);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(expanderLevels,absoluteLevel)) {
		array_push(options,oWhiteProjectileVertical);
		array_push(weights,2)
		sum +=2;
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
	var absoluteLevel = oEverythingManager.level + (log10(oEverythingManager.lightyear*10)-1)*5
	var options = [];
	var weights = [];
	var sum = 0
	var bulletLevels = [2,3,4,5,6,8,9,10,12,13,15]
	var diagonalLevels = [3,5,7,8,9,10,14,15]
	var virusLevels=[6,7,8,10,13,14,15]
	var dustyLevels = [4,5,8,10,12,13,15]
	var splitterLevels = [13,14,15]
	var accelerantLevels = [11,12,13,15]
	var shurikenLevels = [9,10,11,13,14,15]
	var snakeLevels = [9,10,12,14,15]
	var expanderLevels = [7,8,9,10,13,15]
	if (absoluteLevel != 11) {
		options = [oRedProjectileHorizontal]
		weights = [10]
		sum = 10;
	}
	

	if (array_contains(bulletLevels,absoluteLevel)) {
		array_push(options,oYellowProjectileHorizontal);
		array_push(weights,3)
		sum +=3;
	} 
	
	if (array_contains(diagonalLevels,absoluteLevel)) {
		array_push(options,oDiagonalProjectileHorizontal);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(virusLevels,absoluteLevel)) {
		array_push(options,oSpinningProjectileHorizontal);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(dustyLevels,absoluteLevel)) {
		array_push(options,oCircleProjectileHorizontal);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(splitterLevels,absoluteLevel)) {
		array_push(options,oSplitProjectileHorizontal);
		array_push(weights,1)
		sum +=1;
	} 
	
	if (array_contains(accelerantLevels,absoluteLevel)) {
		array_push(options,oAccelerativeHorizontal);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(shurikenLevels,absoluteLevel)) {
		array_push(options,oShurikenHorizontal);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(snakeLevels,absoluteLevel)) {
		array_push(options,oSnakeProjectileHorizontal);
		array_push(weights,2)
		sum +=2;
	} 
	
	if (array_contains(expanderLevels,absoluteLevel)) {
		array_push(options,oWhiteProjectileHorizontal);
		array_push(weights,2)
		sum +=2;
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