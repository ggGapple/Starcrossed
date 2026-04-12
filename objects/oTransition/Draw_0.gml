draw_self();

draw_sprite_part_ext(sLeftAnimated, subimg,0,
0,sprite_get_width(sLeftAnimated)/2,sprite_get_height(sLeftAnimated),
leftX,
room_height/2-sprite_get_height(sLeft)*5,10,10,c_white,1)

draw_sprite_part_ext(sLeftAnimated, subimg,sprite_get_width(sLeftAnimated)/2,
0,sprite_get_width(sLeftAnimated),sprite_get_height(sLeftAnimated),
rightX,
room_height/2-sprite_get_height(sLeft)*5,10,10,c_white,1)