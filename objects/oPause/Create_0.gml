image_xscale = 30*oResolutionManager.uiScale;
image_yscale = 40*oResolutionManager.uiScale;
depth = -100;


x = display_get_gui_width()/2 
tempY = display_get_gui_height()/2;

dieSoon = false;

pausedOrOptions = "Pause";

optionsArray = [
"Music Volume",
"SFX Volume",
"Fullscreen",
]


scales = [1.3];
for (i = 1; i < array_length(optionsArray)+2; i++) {
	scales[i] = 1.1;	
}

selected = 0;

areYouSure = false;