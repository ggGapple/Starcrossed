draw_self();

if (instance_exists(oCometAttack)&& sprite_index != sBallProjectileResidue) {
	draw_set_alpha(oCometAttack.image_alpha*1.35);
	draw_set_color(colors[$ sprite_get_name(sprite_index)]);
	if (dir == "down") {
		draw_roundrect(bbox_left, bbox_top, bbox_right, room_height, false);
	} else if (dir == "left") {
		draw_roundrect(bbox_right, bbox_bottom, 
		x < room_width/2 ? 0 : room_width/2, 
		bbox_top, false);		
	} else if (dir == "right") {
		draw_roundrect(bbox_left, bbox_top, 
		x < room_width/2 ? room_width/2 : room_width,
		bbox_bottom, false);		
	} else if (dir == "rup") {
		draw_line_width(x-sprite_width/2, y+sprite_height/2, x-sprite_width/2+500, y+sprite_height/2-500,5);
	} else if (dir == "rown") {
		draw_line_width(x-sprite_width/2, y-sprite_height/2, x-sprite_width/2+500,y-sprite_height/2+500,5);
	} else if (dir == "lup") {
		draw_line_width(x+sprite_width/2, y+sprite_height/2, x+sprite_width/2-500, y+sprite_height/2-500,5);
	} else if (dir == "lown") {
		draw_line_width(x+sprite_width/2, y-sprite_height/2, x+sprite_width/2-500, y-sprite_height/2+500,5);
	}	
	draw_set_color(c_white);
	draw_set_alpha(1)
}

