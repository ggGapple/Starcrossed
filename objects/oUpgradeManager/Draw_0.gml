if (room == UpgradesRoom) {
	draw_set_font(FntLarge);
	draw_set_color(#0CE6F2);
	draw_text(room_width/2-string_width("Pick an upgrade")/2,20,"Pick an upgrade");	
	draw_set_font(FntMedium);
	draw_text(room_width/2-string_width("Double tap to confirm")/2,155,"Double tap to confirm");	
	draw_set_font(FntMediumLarge);
	draw_set_color(#201533);
	if (selectingUpgrade) {
		draw_text(upgradeBoxes[0].x - string_width(curUpgrades[0])/2 + 10*sprite_get_width(sButton)
		,upgradeBoxes[0].y+string_height(curUpgrades[0])/7,curUpgrades[0]);
		draw_text(upgradeBoxes[1].x - string_width(curUpgrades[1])/2+ 10*sprite_get_width(sButton)
		,upgradeBoxes[1].y+string_height(curUpgrades[1])/7,curUpgrades[1]);
		draw_text(upgradeBoxes[2].x - string_width(curUpgrades[2])/2+ 10*sprite_get_width(sButton)
		,upgradeBoxes[2].y+string_height(curUpgrades[2])/7,curUpgrades[2]);
		
		draw_set_font(FntMedium);
		draw_set_color(#EE145B);
		draw_text(upgradeBoxes[0].x - string_width("A")/2 + 10*sprite_get_width(sButton)
		,upgradeBoxes[0].y-string_height("A"),"A");
		draw_text(upgradeBoxes[1].x - string_width("S")/2+ 10*sprite_get_width(sButton)
		,upgradeBoxes[1].y-string_height("S"),"S");
		draw_text(upgradeBoxes[2].x - string_width("D")/2+ 10*sprite_get_width(sButton)
	,upgradeBoxes[2].y-string_height("D"),"D");
	} else if (selected == 0) {
		draw_text(upgradeBoxes[0].x - string_width(curUpgrades[0])/2 + 10*sprite_get_width(sButton)
		,upgradeBoxes[0].y+string_height(curUpgrades[0])/7,curUpgrades[0]);	
	} else if (selected ==1) {
		draw_text(upgradeBoxes[1].x - string_width(curUpgrades[1])/2+ 10*sprite_get_width(sButton)
		,upgradeBoxes[1].y+string_height(curUpgrades[1])/7,curUpgrades[1]);	
	} else if (selected ==2) {
		draw_text(upgradeBoxes[2].x - string_width(curUpgrades[2])/2+ 10*sprite_get_width(sButton)
		,upgradeBoxes[2].y+string_height(curUpgrades[2])/7,curUpgrades[2]);
	}
	

	
	if (selected != -1) {
		draw_text(upgradeBoxes[selected].x+ 10*sprite_get_width(sButton)-
		string_width(descs[$ curUpgrades[selected]])/2,
		upgradeBoxes[selected].y+115,descs[$ curUpgrades[selected]]);
	}
}