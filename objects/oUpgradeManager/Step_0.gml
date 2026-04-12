if (room==UpgradesRoom ) {
	if (!instance_exists(oUpgradeBox)|| createNewOptions) {
		for (i = 0; i < array_length(upgradeBoxes);i++) {
			instance_destroy(upgradeBoxes[i]);	
		}
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
				array_push(oPlayerManager.chosen,curUpgrades[selected]);
				if (array_length(oPlayerManager.chosen)!=1) {
					upgradesString+=", " 	
				}
				upgradesString += curUpgrades[selected];
				instance_destroy(upgradeBoxes[1]);
				instance_destroy(upgradeBoxes[2]);
				chooseUpgrade(curUpgrades[selected]);
			} else {
				selected = 0;
				upgradeBoxes[0].sprite_index = sButtonSelected;
				upgradeBoxes[1].sprite_index = sButton;
				upgradeBoxes[2].sprite_index = sButton;
			}
		} else if (keyboard_check_pressed(ord("S"))) {
			if (selected ==1) {
				array_push(oPlayerManager.chosen,curUpgrades[selected]);
				selectingUpgrade = false;
				upgradeBoxes[1].sprite_index = sButtonChosen;
				if (array_length(oPlayerManager.chosen)!=1) {
					upgradesString+=", " 	
				}
				upgradesString += curUpgrades[selected];
				instance_destroy(upgradeBoxes[0]);
				instance_destroy(upgradeBoxes[2]);
				chooseUpgrade(curUpgrades[selected]);
			} else {
				selected = 1;
				upgradeBoxes[1].sprite_index = sButtonSelected;
				upgradeBoxes[0].sprite_index = sButton;
				upgradeBoxes[2].sprite_index = sButton;
			}
		} else if (keyboard_check_pressed(ord("D"))) {
			if (selected ==2) {
				array_push(oPlayerManager.chosen,curUpgrades[selected]);
				if (array_length(oPlayerManager.chosen)!=1) {
					upgradesString+=", " 	
				}
				selectingUpgrade = false;
				upgradesString += curUpgrades[selected];
				upgradeBoxes[2].sprite_index = sButtonChosen;
				instance_destroy(upgradeBoxes[1]);
				instance_destroy(upgradeBoxes[0]);
				chooseUpgrade(curUpgrades[selected]);
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
			} else {
				oEverythingManager.level++;
				room_goto(CombatRoom);
			}
		}
	}
}