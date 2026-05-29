draw_set_color(#660827);
outerx1 = room_width/2-lenX/2;
outerx2 = room_width/2+lenX/2;
outery1 = oBoundingBoxLeft.maxY + (room_height-oBoundingBoxLeft.maxY)/2-lenY + yOffset;
outery2 = oBoundingBoxLeft.maxY + (room_height-oBoundingBoxLeft.maxY)/2+lenY + yOffset;



// bg rectangle
draw_set_color(#0098DB);
draw_roundrect(outerx1+4, outery1+4, outerx2-4, outery2-4, false);

if (oPlayerManager.hp>0) {
	draw_set_color(c_white);
	draw_roundrect(outerx1+4, outery1+4 , +outerx1-4+lenX*curHp/oPlayerManager.maxHp, outery2-4 , false);
	draw_set_color(#0CE6F2)
	draw_roundrect(outerx1, outery1 , +outerx1+lenX* oPlayerManager.hp/oPlayerManager.maxHp, outery2 , false);
	draw_set_font(FntMedium)
	draw_set_color(c_white)
	draw_text(room_width/2-string_width("HP")/2,outery1-35,"HP")
}