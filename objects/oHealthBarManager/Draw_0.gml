draw_set_color(#660827);
outerx1 = room_width/2-lenX/2;
outerx2 = room_width/2+lenX/2;
outery1 = oBoundingBoxLeft.maxY + (room_height-oBoundingBoxLeft.maxY)/2-lenY;
outery2 = oBoundingBoxLeft.maxY + (room_height-oBoundingBoxLeft.maxY)/2+lenY;

// outline commented out cuz i think it looks better without
//var outer = draw_rectangle(outerx1, outery1,
//outerx2, outery2,false);

// bg rectangle
draw_set_color(#0098DB);
	
draw_rectangle(outerx1+4, outery1 +4, outerx2 -4, outery2 -4, false);

draw_set_color(#0CE6F2)
draw_rectangle(outerx1+4, outery1 +4, -4+outerx1+lenX* oPlayerManager.hp/oPlayerManager.maxHp, outery2 -4, false);