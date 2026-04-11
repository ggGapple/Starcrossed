lenX = room_width*3/8;
lenY = room_height*3/4;
x = room_width/4*3 - lenX/2;
y = room_height/2 - lenY/2

nineSliceOffset = 3;

minX = x + nineSliceOffset;
maxX = x + lenX - nineSliceOffset;
minY = y + nineSliceOffset;
maxY = y + lenY - nineSliceOffset;


image_xscale = lenX/sprite_get_width(sBoundingBox);
image_yscale = lenY/sprite_get_height(sBoundingBox);

