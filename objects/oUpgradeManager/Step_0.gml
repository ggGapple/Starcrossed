if (oPauseManager.paused) {
	wereWePausedLastFrame = true;	
} else {
	wereWePausedLastFrame = false;	
}
if (room==UpgradesRoom && ! oPauseManager.paused) {
	if (!instance_exists(oUpgradeBox)|| createNewOptions) {
		// instantiate boxes
		for (i = 0; i < array_length(upgradeBoxes);i++) {
			instance_destroy(upgradeBoxes[i]);	
		}
		upgradeBoxes[0] = instance_create_depth(room_width/6
		,-300,-1,oUpgradeBox);
		upgradeBoxes[1] = instance_create_depth(room_width/6*3
		,-300,-1,oUpgradeBox);
		upgradeBoxes[1].idx = 1;
		upgradeBoxes[2] = instance_create_depth(room_width/6*5
		,-300,-1,oUpgradeBox);
		upgradeBoxes[2].idx = 2;
		upgradeBoxes[1].timer += 30
		upgradeBoxes[2].timer += 60
		upgradeBoxes[0].tooltip = "<- A"
		upgradeBoxes[2].tooltip = "D ->"
		if (oEverythingManager.level == 3) {
			if (oEverythingManager.lightyear == 1) {
							curUpgrades[0] = "Elusive";
			curUpgrades[1] = "Violent";
			curUpgrades[2] = "Peaceful";
			upgradeBoxes[0].sprite_index = sElusive
			upgradeBoxes[1].sprite_index = sViolent
			upgradeBoxes[2].sprite_index = sPeaceful
			upgradeBoxes[0].tempY+=50;
			upgradeBoxes[1].tempY+=50;
			upgradeBoxes[2].tempY+=50;
			} else if (oEverythingManager.lightyear == 10) {
				if (oPlayerManager.elusive) {
					curUpgrades[0] = "Blistering";
					curUpgrades[1] = "Deflective";
					curUpgrades[2] = "Transcendent";
					upgradeBoxes[0].sprite_index = sBlistering
					upgradeBoxes[1].sprite_index = sDeflective
					upgradeBoxes[2].sprite_index = sTranscendant
					
				} else if (oPlayerManager.violent) {
					curUpgrades[0] = "Synergistic";
					curUpgrades[1] = "Aggressive";
					curUpgrades[2] = "Volatile";
					upgradeBoxes[0].sprite_index = sSynergistic
					upgradeBoxes[1].sprite_index = sAggressive
					upgradeBoxes[2].sprite_index = sVolatile
				} else if (oPlayerManager.peaceful) {
					curUpgrades[0] = "Medicinal";
					curUpgrades[1] = "Devout";
					curUpgrades[2] = "Twisted";
					upgradeBoxes[0].sprite_index = sMedicinal
					upgradeBoxes[1].sprite_index = sDevout
					upgradeBoxes[2].sprite_index = sTwisted
					
				}

				upgradeBoxes[0].tempY+=50;
				upgradeBoxes[1].tempY+=50;
				upgradeBoxes[2].tempY+=50;
			} else if (oEverythingManager.lightyear == 100) {
				upgradeBoxes[0].tempY+=50;
				upgradeBoxes[1].tempY+=50;
				upgradeBoxes[2].tempY+=50;
				curUpgrades[0] = "Prepared";
				curUpgrades[1] = "Sharp";
				curUpgrades[2] = "Intimidating";
				upgradeBoxes[0].sprite_index = sPrepared
				upgradeBoxes[1].sprite_index = sSharp
				upgradeBoxes[2].sprite_index = sIntimidating
			}

		} else {
			upgradesLeft = basicUpgrades;
			var idx = irandom(array_length(upgradesLeft)-1)
			curUpgrades[0] = upgradesLeft[idx];
			upgradeBoxes[0].sprite_index = upgradesSprites[$ curUpgrades[0]]
			array_delete(upgradesLeft,idx,1);
			idx = irandom(array_length(upgradesLeft)-1)
			curUpgrades[1] = upgradesLeft[idx];
			upgradeBoxes[1].sprite_index = upgradesSprites[$ curUpgrades[1]]
			array_delete(upgradesLeft,idx,1);
			idx = irandom(array_length(upgradesLeft)-1)
			curUpgrades[2] = upgradesLeft[idx];
			upgradeBoxes[2].sprite_index = upgradesSprites[$ curUpgrades[2]]
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
	}
	
	
	// upgrade choosing logic
	
	if (selectingUpgrade) {
		if (keyboard_check_pressed(vk_space) && selected != -1&& !wereWePausedLastFrame) {
				if (selected ==0 and upgradeBoxes[0].animDone) {
					selectingUpgrade = false;
					if (array_length(oPlayerManager.chosen)!=0) {
						upgradesString+=", " 	
					}
					upgradesString += curUpgrades[selected];
					if (!(!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3)) {
						array_push(oPlayerManager.chosen,curUpgrades[selected]);
					} else {
						array_push(oPlayerManager.chosen,curUpgrades[selected]);
					}
					instance_destroy(upgradeBoxes[1]);
					instance_destroy(upgradeBoxes[2]);
					chooseUpgrade(curUpgrades[selected]);
				} else if (selected ==1 and upgradeBoxes[1].animDone) {
					selectingUpgrade = false;
					if (array_length(oPlayerManager.chosen)!=0) {
						upgradesString+=", " 	
					}
					upgradesString += curUpgrades[selected];
					if (!(!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3)) {
						array_push(oPlayerManager.chosen,curUpgrades[selected]);
					} else {
						array_push(oPlayerManager.chosen,curUpgrades[selected]);
					}
					instance_destroy(upgradeBoxes[0]);
					instance_destroy(upgradeBoxes[2]);
					chooseUpgrade(curUpgrades[selected]);
				} else 			if (selected ==2 and upgradeBoxes[2].animDone) {
					if (array_length(oPlayerManager.chosen)!=0) {
						upgradesString+=", " 	
					}
					selectingUpgrade = false;
					upgradesString += curUpgrades[selected];
					if (!(!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3)) {
						array_push(oPlayerManager.chosen,curUpgrades[selected]);
					} else {
						array_push(oPlayerManager.chosen,curUpgrades[selected]);
					}
					instance_destroy(upgradeBoxes[1]);
					instance_destroy(upgradeBoxes[0]);
					chooseUpgrade(curUpgrades[selected]);
				}
		}
		if (keyboard_check_pressed(ord("A"))) {
				selected = clamp(selected-1,0,2);
				audio_play_sound(SndChooseUpgrade, 1, 0)
		} else if (keyboard_check_pressed(ord("D"))) {
			audio_play_sound(SndChooseUpgrade, 1, 0)
			selected = clamp(selected+1,0,2);
		}
	
	} 
	
	// pressing the button to go to the next screen
	else {
		if (keyboard_check_pressed(vk_anykey)) {
			oEverythingManager.level++;
			room_goto(CombatRoom);
		}
	}
	
	//animation
	
	if (curChar < string_length(fullText)) {
	    curChar += textSpeed;
	} if (delay == 0 and curChar2 < string_length(fullText2)) {
	    curChar2 += textSpeed;
	} if (curChar3 < string_length(fullText3)) {
		curChar3 += textSpeed;	
	} else if (curChar5 < string_length(fullText5)){
			curChar5 += textSpeed;
		}
	
	if (yeahWereDone) {
		if (curChar4 < string_length(fullText4)) {
			curChar4 += textSpeed;	
		} 
	}
	if (delay > 0) {
		delay--;	
	}

if (irandom(10)>8) {
	instance_create_depth(irandom(room_width),room_height+10,1,oStartUiParticle);
}

}

