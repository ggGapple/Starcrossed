
	draw_set_font(FntTitle);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	/*
	draw_set_color(oColorCodes.lightBlue);
	draw_text_transformed(display_get_gui_width()/2+4*oResolutionManager.uiScale,
	display_get_gui_height()*2/11+4*oResolutionManager.uiScale,
	title,oResolutionManager.uiScale,
	oResolutionManager.uiScale,0);

	*/
	gpu_set_blendmode(bm_add);
	draw_set_alpha(0.08);
	draw_set_color(c_aqua);
	
	var scaleThing = oResolutionManager.uiScale*(abs(0.15*sin(glowTimer))+0.9);
	draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()*2/11,
	"Starcrossed", 1.07*scaleThing, 1.07*scaleThing, 0);
	draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()*2/11,
	"Starcrossed", 1.03*scaleThing, 1.03*scaleThing, 0);
	draw_set_alpha(0.15);
	draw_set_color(c_white);
	draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()*2/11, 
	"Starcrossed", 1.01*scaleThing, 1.01*scaleThing, 0);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1)


	
	draw_set_color(c_white);
	draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()*2/11,
	title,oResolutionManager.uiScale,
	oResolutionManager.uiScale,0);
	
	gpu_set_blendmode(bm_add);

	var sx = display_get_gui_width()/2;
	var sy = display_get_gui_height()/2;
	var gs = oResolutionManager.uiScale;

	draw_sprite_ext(sActiveGlisten, spriteTimer, sx, sy, 15*gs, 15*gs, 0, c_aqua, 0.08);
	draw_sprite_ext(sActiveGlisten, spriteTimer, sx, sy, 12*gs,   12*gs,   0, c_aqua, 0.12);
	draw_sprite_ext(sActiveGlisten, spriteTimer, sx, sy, 11.5*gs, 11.5*gs, 0, c_white, 0.15);

	gpu_set_blendmode(bm_normal);
	if (!freeze) {
		draw_sprite_ext(sActiveGlisten,spriteTimer,display_get_gui_width()/2,
		display_get_gui_height()/2,10*oResolutionManager.uiScale,10*
		oResolutionManager.uiScale,0,c_white,1);
	}
	

