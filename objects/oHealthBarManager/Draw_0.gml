draw_set_color(#660827);
outerx1 = room_width/4-lenX/2;
outerx2 = room_width/4+lenX/2;
outery1 = BoundingBoxLeft.maxY + (room_height-BoundingBoxLeft.maxY)/2-lenY;
outery2 = BoundingBoxLeft.maxY + (room_height-BoundingBoxLeft.maxY)/2+lenY;

// outline commented out cuz i think it looks better without
//var outer = draw_rectangle(outerx1, outery1,
//outerx2, outery2,false);

// bg rectangle
draw_set_color(#660827);
draw_rectangle(outerx1+4, outery1 +4, outerx2 -4, outery2 -4, false);

draw_set_color(#EE145B)
draw_rectangle(outerx1+4, outery1 +4, -4+outerx2* PlayerManager.hp/PlayerManager.maxHp, outery2 -4, false);