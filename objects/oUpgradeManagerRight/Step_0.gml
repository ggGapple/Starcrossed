if (room==UpgradesRoom ) {
	if (!instance_exists(oUpgradeBox) || createNewOptions) {
		upgradeBoxes[0] = instance_create_depth(room_width/6 - 11*sprite_get_width(sButton)
		,-100,-1,oUpgradeBox);
		upgradeBoxes[1] = instance_create_depth(room_width/6*3 - 11*sprite_get_width(sButton)
		,-100,-1,oUpgradeBox);
		upgradeBoxes[2] = instance_create_depth(room_width/6*5 - 11*sprite_get_width(sButton)
		,-100,-1,oUpgradeBox);
		upgradeBoxes[1].timer += 30
		upgradeBoxes[2].timer += 60
		if (oEverythingManager.obtainedUniqueUpgrade == false and oEverythingManager.level == 3) {
			curUpgrades[0] = "Elusive";
			curUpgrades[1] = "Violent";
			curUpgrades[2] = "Peaceful"
		} else {
			upgradesLeft = basicUpgrades;
			var idx = irandom(array_length(upgradesLeft)-1)
			curUpgrades[0] = upgradesLeft[idx];
			array_delete(upgradesLeft,idx,1);
			idx = irandom(array_length(upgradesLeft)-1)
			curUpgrades[1] = upgradesLeft[idx];
			array_delete(upgradesLeft,idx,1);
			idx = irandom(array_length(upgradesLeft)-1)
			curUpgrades[2] = upgradesLeft[idx];
			array_delete(upgradesLeft,idx,1);
		}
		createNewOptions = false;
		curIndex = 0;
		curChar = 0;
		textSpeed = 0.5;
		fullText = "";
		curIndex2 = 0;
		curChar2 = 0;
		fullText2 = "";
		delay = 60;
		selected = -1;
		selectingUpgrade = true;
		upgradeBoxes[0].sprite_index = sButton;
		upgradeBoxes[1].sprite_index = sButton;
		upgradeBoxes[2].sprite_index = sButton;
	}
	
	if (selectingUpgrade) {
		if (keyboard_check_pressed(ord("A"))) {
			if (selected ==0) {
				selectingUpgrade = false;
				upgradeBoxes[0].sprite_index = sButtonChosen;
				array_push(oPlayerManager.chosen,curUpgrades[selected] + " (R)");
				if (array_length(oPlayerManager.chosen)!=1) {
					upgradesString+=", " 	
				}
				upgradesString += curUpgrades[selected];
				if (!(!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3)) {
					upgradesString += " (R)"
				}
				instance_destroy(upgradeBoxes[1]);
				instance_destroy(upgradeBoxes[2]);
				chooseUpgrade(curUpgrades[selected], "right");
			} else {
				selected = 0;
				upgradeBoxes[0].sprite_index = sButtonSelected;
				upgradeBoxes[1].sprite_index = sButton;
				upgradeBoxes[2].sprite_index = sButton;
			}
		} else if (keyboard_check_pressed(ord("S"))) {
			if (selected ==1) {
				array_push(oPlayerManager.chosen,curUpgrades[selected] + " (R)");
				selectingUpgrade = false;
				upgradeBoxes[1].sprite_index = sButtonChosen;
				if (array_length(oPlayerManager.chosen)!=1) {
					upgradesString+=", " 	
				}
				upgradesString += curUpgrades[selected];
				if (!(!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3)) {
					upgradesString += " (R)"
				}
				instance_destroy(upgradeBoxes[0]);
				instance_destroy(upgradeBoxes[2]);
				chooseUpgrade(curUpgrades[selected], "right");
			} else {
				selected = 1;
				upgradeBoxes[1].sprite_index = sButtonSelected;
				upgradeBoxes[0].sprite_index = sButton;
				upgradeBoxes[2].sprite_index = sButton;
			}
		} else if (keyboard_check_pressed(ord("D"))) {
			if (selected ==2) {
				array_push(oPlayerManager.chosen,curUpgrades[selected] + " (R)");
				if (array_length(oPlayerManager.chosen)!=1) {
					upgradesString+=", " 	
				}
				selectingUpgrade = false;
				upgradesString += curUpgrades[selected];
				upgradeBoxes[2].sprite_index = sButtonChosen;
				if (!(!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3)) {
					upgradesString += " (R)"
				}
				instance_destroy(upgradeBoxes[1]);
				instance_destroy(upgradeBoxes[0]);
				chooseUpgrade(curUpgrades[selected], "right");
			} else {
				selected = 2;	
				upgradeBoxes[2].sprite_index = sButtonSelected;
				upgradeBoxes[1].sprite_index = sButton;
				upgradeBoxes[0].sprite_index = sButton;
			}
		}
	
	} else {
		if (keyboard_check_pressed(vk_anykey)) {
			if (!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3) {
				oEverythingManager.obtainedUniqueUpgrade = true;
				createNewOptions = true;
				array_push(basicUpgrades,"Versatile")
			} else {
				oEverythingManager.level++;
				room_goto(CombatRoom);
			}
		}
	}
	
	//animation
	
	if (curChar < string_length(fullText)) {
	    curChar += textSpeed;
	} 
	if (curChar3 < string_length(fullText3)) {
		curChar3 += textSpeed;	
	} if (curChar4 < string_length(fullText4) && yeahWereDone) {
		curChar4 += textSpeed;	
	}
	if (delay == 0 and curChar2 < string_length(fullText2)) {
	    curChar2 += textSpeed;
	}
	if (delay > 0) {
		delay--;	
	}


}

