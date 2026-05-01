if (room == UpgradesRoom and array_length(upgradeBoxes)> 0) {
	draw_set_font(FntLarge);
	draw_set_color(#0CE6F2);
	
	// for level 3, u pick a unique upgrade
	if (!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3) {
		fullText = "Congrats on beating level 3!"
		var _displayText = string_copy(fullText, 1, floor(curChar));
		if (oEverythingManager.lightyear == 1) {
			fullText2 = "As a reward, pick a special ability that triggers with down arrow"
		} else 		if (oEverythingManager.lightyear == 10) {
			fullText2 = "As a reward, pick an upgrade for your ability"
		} else if (oEverythingManager.lightyear == 100) {
			fullText2 = "As a reward, pick a unique upgrade"
		}
		var _displayText2 = string_copy(fullText2, 1, floor(curChar2));
		drawTextShadow(room_width/2-string_width(fullText)/2, 20, _displayText,3);
		draw_set_font(FntMedium);
		if (selectingUpgrade) {
			draw_text(room_width/2-string_width(fullText2)/2,155,
			_displayText2);	
		}
	} else {
		fullText = "Upgrade Selector"
		var _displayText = string_copy(fullText, 1, floor(curChar));
		drawTextShadow(room_width/2-string_width(fullText)/2, 20, _displayText,3);
		draw_set_font(FntMedium);
		draw_set_color(#1e579c);
	}
	draw_set_font(FntMediumLarge);
	draw_set_color(c_white);
	if (selectingUpgrade) {
		// draw text for upgrade names
		draw_text(upgradeBoxes[0].x - string_width(curUpgrades[0])/2 
		,upgradeBoxes[0].y+75,curUpgrades[0]);
		draw_text(upgradeBoxes[1].x - string_width(curUpgrades[1])/2
		,upgradeBoxes[1].y+75,curUpgrades[1]);
		draw_text(upgradeBoxes[2].x - string_width(curUpgrades[2])/2
		,upgradeBoxes[2].y+75,curUpgrades[2]);
		


	
	} else if (selected == 0) {
		draw_text(upgradeBoxes[0].x - string_width(curUpgrades[0])/2 
		,upgradeBoxes[0].y+75,curUpgrades[0]);
	} else if (selected ==1) {
		draw_text(upgradeBoxes[1].x - string_width(curUpgrades[1])/2
		,upgradeBoxes[1].y+75,curUpgrades[1]);	
	} else if (selected ==2) {
		draw_text(upgradeBoxes[2].x - string_width(curUpgrades[2])/2
		,upgradeBoxes[2].y+75,curUpgrades[2]);	
	}
	
	// if done, the tip to go to next level
	 if (!selectingUpgrade) {
		yeahWereDone = true;
		draw_set_font(FntMedium);
		draw_set_color(#1e579c);
		fullText4 = "Press any key to start the next level";
		var _displayText4 = string_copy(fullText4, 1, floor(curChar4));
		draw_set_color(oColorCodes.darkBlue);
		draw_text(room_width/2 - string_width("Press any key to start the next level")/2,
		155,_displayText4);	
	}
	
	// draw description
	if (selected != -1) {
		draw_set_font(FntMedium);
		draw_set_color(c_white);
		draw_text(upgradeBoxes[selected].x-string_width(descs[$ curUpgrades[selected]])/2,
		upgradeBoxes[selected].y+150,descs[$ curUpgrades[selected]]);
	}
	
	// draw current upgrades
	fullText3 = upgradesString;
	var _displayText3 = string_copy(fullText3, 1, floor(curChar3));
	draw_set_font(FntSuggestion);
	draw_set_color(oColorCodes.darkBlue);
	draw_text(10,room_height-string_height(_displayText3)-5,_displayText3);
}