draw_set_font(FntMedium);
draw_set_color(#EE145B);
draw_set_halign(fa_left);
draw_text_transformed(display_get_gui_width()/160,0,("Level: " + string(oEverythingManager.level)) +
"/5",oResolutionManager.uiScale,
oResolutionManager.uiScale,0);