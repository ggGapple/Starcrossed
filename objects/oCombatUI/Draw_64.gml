draw_set_font(FntMedium);
draw_set_color(c_white);
draw_set_halign(fa_left);
var afterString = oEverythingManager.level == 1 && oEverythingManager.lightyear == 1 ? " lightyear out" :
" lightyears out"
var base1 = oEverythingManager.lightyear == 1 ? 0 : oEverythingManager.lightyear
var base2 = oEverythingManager.lightyear == 100 && oEverythingManager.level == 5 ? 500 : base1
var lightyears = string(
oEverythingManager.lightyear*oEverythingManager.level + base2
)


draw_text_transformed(display_get_gui_width()/160,0,lightyears + 
afterString,oResolutionManager.uiScale,
oResolutionManager.uiScale,0);

draw_set_color(oColorCodes.lightBlue);
draw_text_transformed(display_get_gui_width()/160,0,lightyears,oResolutionManager.uiScale,
oResolutionManager.uiScale,0);