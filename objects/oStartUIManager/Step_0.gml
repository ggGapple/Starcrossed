
if (!freeze) {
	animTimer++;
	if (animTimer > 2) {
		animTimer = 0;	
		spriteTimer ++;
		if (spriteTimer > 76 ){ 
			spriteTimer = 0;	
		}
	}
}

if (keyboard_check_pressed(ord("A"))) {
	audio_play_sound(SndChooseUpgrade, 1, 0)
	menuButtons[0].selected=true;
	menuButtons[1].selected=false;
	menuButtons[2].selected=false;
} if (keyboard_check_pressed(ord("S"))) {
	audio_play_sound(SndChooseUpgrade, 1, 0)
	menuButtons[1].selected=true;
	menuButtons[0].selected=false;
	menuButtons[2].selected=false;
} if (keyboard_check_pressed(ord("D"))) {
	audio_play_sound(SndChooseUpgrade, 1, 0)
	menuButtons[2].selected=true;
	menuButtons[1].selected=false;
	menuButtons[0].selected=false;
}
if (irandom(10)>8) {
	instance_create_depth(irandom(room_width),room_height+10,1,oStartUiParticle);
}


if (keyboard_check_pressed(vk_space)) {
	if (menu == 0) {
		if (menuButtons[2].selected) {
			game_end();	
		} else if (menuButtons[1].selected){ 
			audio_play_sound(SndHurt,1,0);
			menu = 1;
		}
	} else if (menu == 1) {
		if (menuButtons[1].selected) {
			audio_play_sound(SndHurt,1,0);
			started = true;
			instance_create_depth(0,0,-50,oTransition);
			freeze = true;					
		} else if (menuButtons[2].selected) {
			audio_play_sound(SndHurt,1,0);
			menu = 0;	
		}
	}
}

glowTimer+=0.003

if (menu == 0 && menuButtons[1].text != "Start") {
	menuButtons[1].text = "Start"
	menuButtons[0].text = "Astropedia"
	menuButtons[2].text = "Quit"
} else if (menu == 1 && menuButtons[1].text == "Start") {
	menuButtons[1].text = "Classic"
	menuButtons[0].text = "Starkiller"
	menuButtons[2].text = "Back"
}
