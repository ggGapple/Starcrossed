if (room==UpgradesRoom ) {
	if (!instance_exists(oUpgradeBox)) {
		upgradeBoxes[0] = instance_create_depth(room_width/6 - 10*sprite_get_width(sButton)
		,350,-1,oUpgradeBox);
		upgradeBoxes[1] = instance_create_depth(room_width/6*3 - 10*sprite_get_width(sButton)
		,350,-1,oUpgradeBox);
		upgradeBoxes[2] = instance_create_depth(room_width/6*5 - 10*sprite_get_width(sButton)
		,350,-1,oUpgradeBox);
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
	
	if (selectingUpgrade) {
		if (keyboard_check_pressed(ord("A"))) {
			if (selected ==0) {
				chosenUpgrades[0] = curUpgrades[selected];
				selectingUpgrade = false;
				upgradeBoxes[0].sprite_index = sButtonChosen;
				instance_destroy(upgradeBoxes[1]);
				instance_destroy(upgradeBoxes[2]);
			} else {
				selected = 0;
				upgradeBoxes[0].sprite_index = sButtonSelected;
				upgradeBoxes[1].sprite_index = sButton;
				upgradeBoxes[2].sprite_index = sButton;
			}
		} else if (keyboard_check_pressed(ord("S"))) {
			if (selected ==1) {
				chosenUpgrades[0] = curUpgrades[selected];
				selectingUpgrade = false;
				upgradeBoxes[1].sprite_index = sButtonChosen;
				instance_destroy(upgradeBoxes[0]);
				instance_destroy(upgradeBoxes[2]);
			} else {
				selected = 1;
				upgradeBoxes[1].sprite_index = sButtonSelected;
				upgradeBoxes[0].sprite_index = sButton;
				upgradeBoxes[2].sprite_index = sButton;
			}
		} else if (keyboard_check_pressed(ord("D"))) {
			if (selected ==2) {
				chosenUpgrades[0] = curUpgrades[selected];
				selectingUpgrade = false;
				upgradeBoxes[2].sprite_index = sButtonChosen;
				instance_destroy(upgradeBoxes[1]);
				instance_destroy(upgradeBoxes[0]);
			} else {
			selected = 2;	
				upgradeBoxes[2].sprite_index = sButtonSelected;
				upgradeBoxes[1].sprite_index = sButton;
				upgradeBoxes[0].sprite_index = sButton;
			}
		}
	
	} else {
		if (keyboard_check_pressed(vk_anykey)) {
			room_goto(CombatRoom);
		}
		draw_set_font(FntMediumLarge);
		draw_text(room_width/2 - string_width("Press any key to start the next level")/2,
		400, "Press any key to start the next level");
	}
}