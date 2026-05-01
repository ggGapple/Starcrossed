y = lerp(y, tempY, 0.1);



if (image_xscale != 30* oResolutionManager.uiScale) {
	image_xscale = 30*oResolutionManager.uiScale;
	image_yscale = 40*oResolutionManager.uiScale;
	x = display_get_gui_width()/2 
	y = display_get_gui_height()/2;
	tempY = display_get_gui_height()/2;
}


if (keyboard_check_pressed(vk_space) && !dieSoon) {
	if (selected == array_length(optionsArray) +1) {
		tempY = -50 - sprite_height;	
		dieSoon = true;
		oPauseManager.paused = false;	
	} else if (selected == array_length(optionsArray)) {
		areYouSure = true;
		selected = 0;
	} else if (areYouSure && selected == 0) {
		areYouSure = false;
		selected = 0;
	} else if (areYouSure && selected == 1) {
		 game_restart();
	}
}
if (keyboard_check_pressed(vk_escape)) {
	tempY = -50 - sprite_height;	
	dieSoon = true;		
}


if (y+sprite_height < 0 && dieSoon) {
	updateSettings();
	instance_destroy();	
}

if (dieSoon) {
	return;	
}
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	if (areYouSure) {
		selected = min(selected+1, 1);
		audio_play_sound(SndChooseUpgrade,1,0);		
	} else {
		selected = min(selected+1, array_length(optionsArray)+1);
		audio_play_sound(SndChooseUpgrade,1,0);
	}
}
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	selected = max(selected-1, 0);
	audio_play_sound(SndChooseUpgrade,1,0);
}

if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
	audio_play_sound(SndDialogueNext,1,0);
	if (selected == 0) {
		oMusicManager.musicVolume = max(0, oMusicManager.musicVolume-1);	
	} else if (selected == 1) {
		oMusicManager.sfxVolume = max(0, oMusicManager.sfxVolume-1);	
	} else if (selected == 2) {
		oEverythingManager.fullscreen = !oEverythingManager.fullscreen;	
	} else if (selected == 3) {
		oEverythingManager.doTutorial = !oEverythingManager.doTutorial;	
	} else if (selected == 4) {
		oEverythingManager.showRunCountInMenu = !oEverythingManager.showRunCountInMenu;	
	} else if (selected == 5) {
		oEverythingManager.showTips = !oEverythingManager.showTips;	
	}
}

if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
	audio_play_sound(SndDialogueNext,1,0);
	if (selected == 0) {
		oMusicManager.musicVolume = min(5, oMusicManager.musicVolume+1);	
	} else if (selected == 1) {
		oMusicManager.sfxVolume = min(5, oMusicManager.sfxVolume+1);	
	} else if (selected == 2) {
		oEverythingManager.fullscreen = !oEverythingManager.fullscreen;	
	}  else if (selected == 3) {
		oEverythingManager.doTutorial = !oEverythingManager.doTutorial;	
	} else if (selected == 4) {
		oEverythingManager.showRunCountInMenu = !oEverythingManager.showRunCountInMenu;	
	} else if (selected == 5) {
		oEverythingManager.showTips = !oEverythingManager.showTips;	
	}
} 
