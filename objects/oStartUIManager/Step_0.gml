if (keyboard_check_pressed(vk_anykey) and !started and menu== 2) {
	started = true;
	instance_create_depth(0,0,-50,oTransition);
	freeze = true;
}

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
	menuButtons[0].selected=true;
	menuButtons[1].selected=false;
	menuButtons[2].selected=false;
} if (keyboard_check_pressed(ord("S"))) {
	menuButtons[1].selected=true;
	menuButtons[0].selected=false;
	menuButtons[2].selected=false;
} if (keyboard_check_pressed(ord("D"))) {
	menuButtons[2].selected=true;
	menuButtons[1].selected=false;
	menuButtons[0].selected=false;
}
if (irandom(10)>8) {
	instance_create_depth(irandom(room_width),room_height+10,1,oStartUiParticle);
}


if (keyboard_check_pressed(vk_space)) {
	if (menuButtons[2].selected) {
		game_end();	
	} else if (menuButtons[1].selected){ 
		started = true;
		instance_create_depth(0,0,-50,oTransition);
		freeze = true;			
	}
}

glowTimer+=0.003