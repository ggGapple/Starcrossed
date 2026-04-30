draw_set_color(#660827);
outerx1 = room_width/4-lenX/2;
outerx2 = room_width/4+lenX/2;
outery1 = oBoundingBoxLeft.minY/2 -lenY+45 + yOffset;
outery2 = oBoundingBoxLeft.minY/2 +lenY+45 + yOffset;


// bg rectangle
draw_set_color(#660827);
draw_roundrect(outerx1+4, outery1 +4, outerx2 -4, outery2 -4, false);


draw_set_color(#EE145B)
draw_roundrect(outerx1, outery1, outerx1+lenX* oEnemyManager.leftHp/oEnemyManager.leftHpMax, 
outery2, false);





if (oEnemyManager.leftHp == oEnemyManager.leftHpMax && !oPauseManager.paused) {
	warningTimer+= warningDirection;
	if (warningTimer == 0 || warningTimer == 40) {
		warningDirection*=-1;
	}
	draw_set_alpha(warningTimer/40);
	draw_set_color(c_white)
	draw_roundrect(outerx1, outery1, outerx1+lenX* oEnemyManager.leftHp/oEnemyManager.leftHpMax, 
	outery2, false);
	draw_set_alpha(1);
	if (warningTimer > 30) {
		draw_set_font(FntMediumLarge)
		draw_set_color(c_white)
		draw_text(outerx1 + (outerx2-outerx1)/2,outery1-100,"!")
	}

}


draw_set_color(oColorCodes.lightRed);
draw_set_font(FntMedium)
if (oEverythingManager.level != 0) {
	draw_text(room_width/4 - string_width("Enemy Strength")/2,outery1-37,"Enemy Strength");
}

