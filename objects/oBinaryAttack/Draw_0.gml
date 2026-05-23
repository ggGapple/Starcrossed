if (!(boomTimer < -120 and boomTimer>-135)) {
	draw_self();	
}

if (boomTimer > -20 and boomTimer < 0) {
	if (boomTimer == 0) {
		audio_play_sound(SndUpgrade,1,0)
	}
	draw_set_color(c_white);
	draw_set_font(FntTitle);
	draw_set_alpha(1);
	draw_text(x + sprite_width/2 - string_width("!")/2,
	y + sprite_height/2-string_height("!")/2,"!")
} if (boomTimer > -60 and boomTimer < -40) {
	if (boomTimer == -40) {
		audio_play_sound(SndUpgrade,1,0)
	}
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(FntTitle);
	draw_text(x + sprite_width/2 - string_width("!")/2,
	y + sprite_height/2-string_height("!")/2,"!")
}

with (oBulletParent) {
	if (x >= room_width/2) {
		if (sprite_index == sSnakeProjectileHorizontal) {
			draw_sprite_ext(sSnakeProjectileHorizontalBlue,
			image_index,x-room_width/2,y,image_xscale,image_yscale,0,c_white,0.4)
		} else {
			draw_sprite_ext(sprite_index,1,x-room_width/2,y,image_xscale,image_yscale,image_angle,c_white,0.4)
		}
		
	} else if (x < room_width/2) {
		if (sprite_index == sSnakeProjectileHorizontal) {
			draw_sprite_ext(sSnakeProjectileHorizontalBlue,image_index,x+room_width/2,y,image_xscale,image_yscale,0,c_white,0.4)
		} else {
			draw_sprite_ext(sprite_index,1,x+room_width/2,y,image_xscale,image_yscale,image_angle,c_white,0.4)
		}
	}
}