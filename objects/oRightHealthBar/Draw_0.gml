draw_set_color(#660827);
outerx1 = room_width*3/4-lenX/2;
outerx2 = room_width*3/4+lenX/2;
outery1 = oBoundingBoxRight.minY/2 -lenY+45 + yOffset;
outery2 = oBoundingBoxRight.minY/2 +lenY+45 + yOffset;


// bg rectangle
draw_set_color(#660827);
draw_roundrect(outerx1+4, outery1 +4, outerx2 -4, outery2 -4, false);

draw_set_color(#EE145B)

draw_roundrect(outerx1, outery1,+outerx1+lenX* oEnemyManager.rightHp/oEnemyManager.rightHpMax, 
outery2, false);

draw_set_color(oColorCodes.lightRed);
draw_set_font(FntMedium)
if (oEverythingManager.level != 0) {
	draw_text(room_width*3/4 - string_width("Enemy Health")/2,outery1-37,"Enemy Health");
}