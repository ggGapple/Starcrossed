draw_set_color(#660827);
outerx1 = room_width/4-lenX/2;
outerx2 = room_width/4+lenX/2;
outery1 = oBoundingBoxLeft.minY/2 -lenY+45 + yOffset;
outery2 = oBoundingBoxLeft.minY/2 +lenY+45 + yOffset;


// bg rectangle
draw_set_color(#660827);
draw_rectangle(outerx1+4, outery1 +4, outerx2 -4, outery2 -4, false);

draw_set_color(#EE145B)
draw_rectangle(outerx1+4, outery1 +4, outerx1+lenX* oEnemyManager.leftHp/oEnemyManager.leftHpMax, outery2 -4, false);