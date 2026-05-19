return;
var _displayText = string_copy(fullText, 1, floor(curChar));

draw_set_font(FntMedium)
draw_set_color(#0CE6F2);
draw_text_transformed(display_get_gui_width()/2-string_width(fullText)/2*oResolutionManager.uiScale, 
30, _displayText,
oResolutionManager.uiScale,oResolutionManager.uiScale,0);