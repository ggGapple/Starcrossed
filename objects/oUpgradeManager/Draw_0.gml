if (room == UpgradesRoom) {
	draw_set_font(FntLarge);
	draw_set_color(#0CE6F2);
	
	// for level 3, u pick a unique upgrade
	if (!oEverythingManager.obtainedUniqueUpgrade and oEverythingManager.level == 3) {
		draw_text(room_width/2-string_width("Congrats on beating level 3!")/2,20,"Congrats on beating level 3!");	
		draw_set_font(FntMedium);
		draw_text(room_width/2-string_width("As a reward, pick a special ability that triggers with down arrow")/2,155,
		"As a reward, pick a special ability that triggers with down arrow");	
	} else {
		draw_text(room_width/2-string_width("Pick an upgrade")/2,20,"Pick an upgrade");	
		draw_set_font(FntMedium);
		draw_text(room_width/2-string_width("Double tap to confirm")/2,155,"Double tap to confirm");
	}
	draw_set_font(FntMediumLarge);
	draw_set_color(#201533);
	if (selectingUpgrade) {
		draw_text(upgradeBoxes[0].x - string_width(curUpgrades[0])/2 + 11*sprite_get_width(sButton)
		,upgradeBoxes[0].y,curUpgrades[0]);
		draw_text(upgradeBoxes[1].x - string_width(curUpgrades[1])/2+ 11*sprite_get_width(sButton)
		,upgradeBoxes[1].y,curUpgrades[1]);
		draw_text(upgradeBoxes[2].x - string_width(curUpgrades[2])/2+ 11*sprite_get_width(sButton)
		,upgradeBoxes[2].y,curUpgrades[2]);
		
		draw_set_font(FntMedium);
		draw_set_color(#EE145B);
		draw_text(upgradeBoxes[0].x - string_width("A")/2 + 11*sprite_get_width(sButton)
		,upgradeBoxes[0].y-string_height("A")-5,"A");
		draw_text(upgradeBoxes[1].x - string_width("S")/2+ 11*sprite_get_width(sButton)
		,upgradeBoxes[1].y-string_height("S")-5,"S");
		draw_text(upgradeBoxes[2].x - string_width("D")/2+ 11*sprite_get_width(sButton)
	,upgradeBoxes[2].y-string_height("D")-5,"D");
	} else if (selected == 0) {
		draw_text(upgradeBoxes[0].x - string_width(curUpgrades[0])/2 + 11*sprite_get_width(sButton)
		,upgradeBoxes[0].y,curUpgrades[0]);	
	} else if (selected ==1) {
		draw_text(upgradeBoxes[1].x - string_width(curUpgrades[1])/2+ 11*sprite_get_width(sButton)
		,upgradeBoxes[1].y,curUpgrades[1]);	
	} else if (selected ==2) {
		draw_text(upgradeBoxes[2].x - string_width(curUpgrades[2])/2+ 11*sprite_get_width(sButton)
		,upgradeBoxes[2].y,curUpgrades[2]);
	}
	
	// if done, the tip to go to next level
	if (!selectingUpgrade) {
		draw_set_font(FntMedium);
		draw_set_color(#0CE6F2);
		draw_text(room_width/2 - string_width("Press any key to start the next level")/2,
		700, "Press any key to start the next level");	
	}
	
	// draw description
	if (selected != -1) {
		draw_set_font(FntMedium);
		draw_text(upgradeBoxes[selected].x+ 11*sprite_get_width(sButton)-
		string_width(descs[$ curUpgrades[selected]])/2,
		upgradeBoxes[selected].y+100,descs[$ curUpgrades[selected]]);
	}
}