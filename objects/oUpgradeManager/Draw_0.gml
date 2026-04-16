if (room == UpgradesRoom and array_length(upgradeBoxes)> 0) {
	draw_set_font(FntLarge);
	draw_set_color(#0CE6F2);
	
	// for level 3, u pick a unique upgrade
	if (!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3) {
		fullText = "Congrats on beating level 3!"
		var _displayText = string_copy(fullText, 1, floor(curChar));
		fullText2 = "As a reward, pick a special ability that triggers with down arrow"
		var _displayText2 = string_copy(fullText2, 1, floor(curChar2));
		draw_text(room_width/2-string_width(fullText)/2, 20, _displayText);
		draw_set_font(FntMedium);
		if (selectingUpgrade) {
			draw_text(room_width/2-string_width(fullText2)/2,155,
			_displayText2);	
		}
	} else {
		fullText = "Pick an upgrade ("+side+" side)"
		var _displayText = string_copy(fullText, 1, floor(curChar));
		fullText2 = "Double tap to confirm"
		var _displayText2 = string_copy(fullText2, 1, floor(curChar2));
		draw_text(room_width/2-string_width(fullText)/2, 20, _displayText);
		draw_set_font(FntMedium);
		draw_set_color(#1e579c);
		if (selectingUpgrade) {
			draw_text(room_width/2-string_width(fullText2)/2, 155, _displayText2);
		}
	}
	draw_set_font(FntMediumLarge);
	draw_set_color(#201533);
	if (selectingUpgrade) {
		draw_text(upgradeBoxes[0].x - string_width(curUpgrades[0])/2 + 
		sprite_get_width(sButton)*(upgradeBoxes[0].image_xscale)/2
		,upgradeBoxes[0].y,curUpgrades[0]);
		draw_text(upgradeBoxes[1].x - string_width(curUpgrades[1])/2+ sprite_get_width(sButton)*
		(upgradeBoxes[1].image_xscale)/2
		,upgradeBoxes[1].y,curUpgrades[1]);
		draw_text(upgradeBoxes[2].x - string_width(curUpgrades[2])/2+ 
		sprite_get_width(sButton)*(upgradeBoxes[2].image_xscale)/2
		,upgradeBoxes[2].y,curUpgrades[2]);
		draw_set_font(FntMedium);
		draw_set_color(oColorCodes.lightRed);
		draw_text(upgradeBoxes[0].x - string_width("A")/2 + 11*sprite_get_width(sButton)
		,upgradeBoxes[0].y-string_height("A")-5,"A");
		draw_text(upgradeBoxes[1].x - string_width("S")/2+ 11*sprite_get_width(sButton)
		,upgradeBoxes[1].y-string_height("S")-5,"S");
		draw_text(upgradeBoxes[2].x - string_width("D")/2+ 11*sprite_get_width(sButton)
	,upgradeBoxes[2].y-string_height("D")-5,"D");
	} else if (selected == 0) {
		draw_text(upgradeBoxes[0].x - string_width(curUpgrades[0])/2 + 
		sprite_get_width(sButton)*(upgradeBoxes[0].image_xscale)/2
		,upgradeBoxes[0].y,
		curUpgrades[0]);	
	} else if (selected ==1) {
		draw_text(upgradeBoxes[1].x - string_width(curUpgrades[1])/2 + 
		sprite_get_width(sButton)*(upgradeBoxes[1].image_xscale)/2
		,upgradeBoxes[1].y,
		curUpgrades[1]);	
	} else if (selected ==2) {
		draw_text(upgradeBoxes[2].x - string_width(curUpgrades[2])/2 + 
		sprite_get_width(sButton)*(upgradeBoxes[2].image_xscale)/2
		,upgradeBoxes[2].y,
		curUpgrades[2]);	
	}
	
	// if done, the tip to go to next level
	 if (!selectingUpgrade) {
		yeahWereDone = true;
		draw_set_font(FntMedium);
		draw_set_color(#1e579c);
		fullText4 = "Press any key to select the next upgrade";
		var _displayText4 = string_copy(fullText4, 1, floor(curChar4));
		draw_set_color(oColorCodes.darkBlue);
		draw_text(room_width/2 - string_width("Press any key to select the next upgrade")/2,
		155,_displayText4);	
	}
	
	// draw description
	if (selected != -1) {
		draw_set_font(FntMedium);
		if (yeahWereDone) {
			draw_set_color(oColorCodes.lightBlue);	
		} else {
			draw_set_color(oColorCodes.lightRed);
		}
		draw_text(upgradeBoxes[selected].x+ 11*sprite_get_width(sButton)-
		string_width(descs[$ curUpgrades[selected]])/2,
		upgradeBoxes[selected].y+100,descs[$ curUpgrades[selected]]);
	}
	
	// draw current upgrades
	fullText3 = upgradesString;
	var _displayText3 = string_copy(fullText3, 1, floor(curChar3));
	draw_set_font(FntSuggestion);
	draw_set_color(oColorCodes.darkBlue);
	draw_text(10,room_height-string_height(_displayText3)-5,_displayText3);
}