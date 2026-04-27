draw_set_font(FntTitle);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

gpu_set_blendmode(bm_add);
draw_set_alpha(0.08);
draw_set_color(c_aqua);
	
	var scaleThing = (abs(0.15*sin(glowTimer))+0.9);
	draw_text_transformed(room_width/2,room_height*2/11,
	"Starcrossed", 1.07*scaleThing, 1.07*scaleThing, 0);
	draw_text_transformed(room_width/2,room_height*2/11,
	"Starcrossed", 1.03*scaleThing, 1.03*scaleThing, 0);
	draw_set_alpha(0.15);
	draw_set_color(c_white);
	draw_text_transformed(room_width/2,room_height*2/11, 
	"Starcrossed", 1.01*scaleThing, 1.01*scaleThing, 0);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1)


	
	draw_set_color(c_white);
	draw_text_transformed(room_width/2,room_height*2/11,
	title,1,
	1,0);
	
	gpu_set_blendmode(bm_add);

	var sx = room_width/2;
	var sy = room_height/2;

	draw_sprite_ext(sActiveGlisten, spriteTimer, sx, sy, 15, 15, 0, c_aqua, 0.08);
	draw_sprite_ext(sActiveGlisten, spriteTimer, sx, sy, 12,   12,   0, c_aqua, 0.12);
	draw_sprite_ext(sActiveGlisten, spriteTimer, sx, sy, 11.5, 11.5, 0, c_white, 0.15);

	gpu_set_blendmode(bm_normal);
	if (!freeze) {
		draw_sprite_ext(sActiveGlisten,spriteTimer,room_width/2,
		room_height/2,10,10,0,c_white,1);
	}
	
	if (oEverythingManager.showRunCountInMenu) {
		draw_set_color(c_gray);
		draw_set_font(FntMedium);
		draw_text(string_width("Completed runs: " + string(oEverythingManager.runCount))/2+4
		,room_height-20,"Completed runs: " + string(oEverythingManager.runCount));
	}
	

