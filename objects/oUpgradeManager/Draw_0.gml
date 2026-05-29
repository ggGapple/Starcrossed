if (room == UpgradesRoom and array_length(upgradeBoxes)> 0) {
	draw_set_font(FntLarge);
	draw_set_color(#0CE6F2);
	
	// for level 3, u pick a unique upgrade
	if (!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3) {
		
		if (oEverythingManager.lightyear == 1) {
			fullText = "Pick a special"
		} else 		if (oEverythingManager.lightyear == 10) {
			fullText = "Pick a special upgrade"
		} else if (oEverythingManager.lightyear == 100) {
			fullText = "Pick a unique bonus"
		}
		var _displayText = string_copy(fullText, 1, floor(curChar));
		drawTextShadow(room_width/2-string_width(fullText)/2, 20, _displayText,3);
		draw_set_font(FntMedium);
	} else {
		fullText = "Upgrade Selector"
		var _displayText = string_copy(fullText, 1, floor(curChar));
		drawTextShadow(room_width/2-string_width(fullText)/2, 20, _displayText,3);
		draw_set_font(FntMedium);
		draw_set_color(#1e579c);
	}
	draw_set_font(FntMediumLarge);
			font_enable_effects(FntMediumLarge, true, {
		    outlineEnable: true,
		    outlineDistance: 1,
		    outlineColour: c_black
		});
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
	
	font_enable_effects(FntMediumLarge, false, {
		    outlineEnable: true,
		    outlineDistance: 1,
		    outlineColour: c_black
		});
	
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
				font_enable_effects(FntMedium, true, {
		    outlineEnable: true,
		    outlineDistance: 1,
		    outlineColour: c_black
		});
		draw_set_color(c_white);
		draw_text(upgradeBoxes[selected].x-string_width(descs[$ curUpgrades[selected]])/2,
		upgradeBoxes[selected].y+150,descs[$ curUpgrades[selected]]);
		if (oEverythingManager.showTips) {
			draw_set_color(c_gray);
			draw_set_font(FntSuggestion);
			draw_text(upgradeBoxes[selected].x-string_width("[space]")/2,
			upgradeBoxes[selected].y+183, "[space]");
			draw_set_color(c_white)
		}
		font_enable_effects(FntMedium, false, {
		    outlineEnable: true,
		    outlineDistance: 1,
		    outlineColour: c_black
		});
	}
	
	// draw current upgrades
	fullText3 = upgradesString;
	fullText5 = upgradesString2;
	if (fullText5 != "") {
		var _displayText3 = string_copy(fullText3, 1, floor(curChar3));
		draw_set_font(FntSuggestion);
		draw_set_color(oColorCodes.darkBlue);
		draw_text(10,room_height-string_height(_displayText3)-25,_displayText3);
		var _displayText5 = string_copy(fullText5, 1, floor(curChar5));
		draw_set_font(FntSuggestion);
		draw_set_color(oColorCodes.darkBlue);
		draw_text(10,room_height-string_height(_displayText5)-5,_displayText5);
	} else {
		var _displayText3 = string_copy(fullText3, 1, floor(curChar3));
		draw_set_font(FntSuggestion);
		draw_set_color(oColorCodes.darkBlue);
		draw_text(10,room_height-string_height(_displayText3)-5,_displayText3);		
	}

}