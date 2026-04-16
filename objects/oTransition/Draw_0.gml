draw_self();

draw_sprite_part_ext(sActiveGlisten, subimg,0,
0,sprite_get_width(sActiveGlisten)/2,sprite_get_height(sActiveGlisten),
leftX,
room_height/2-sprite_get_height(sActive)*5,10,10,c_white,1)

draw_sprite_part_ext(sActiveGlisten, subimg,sprite_get_width(sActiveGlisten)/2,
0,sprite_get_width(sActiveGlisten),sprite_get_height(sActiveGlisten),
rightX,
room_height/2-sprite_get_height(sActive)*5,10,10,c_white,1)