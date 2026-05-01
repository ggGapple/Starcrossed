title = "Starcrossed"
depth = -2

animTimer = 0;
spriteTimer = 0;
freeze = false;
started = false;
menu = 0
// 0 is opening screen, 1 is mode select, 2 is confirm

menuButtons = [];
menuButtons[0] = instance_create_depth(room_width/6 - 11*sprite_get_width(sButton)
,-150,-1,oMenuButton);
menuButtons[1] = instance_create_depth(room_width/6*3 - 11*sprite_get_width(sButton)
,-150,-1,oMenuButton);
menuButtons[2] = instance_create_depth(room_width/6*5 - 11*sprite_get_width(sButton)
,-150,-1,oMenuButton);
menuButtons[1].timer+=30;
menuButtons[2].timer+=60;
menuButtons[1].goFadeTimer+=10;
menuButtons[2].goFadeTimer+=20;
menuButtons[1].text = "Start"
menuButtons[0].text = "Options"
menuButtons[2].text = "Quit"

menuButtons[1].selected=true;

selected = 1;

glowTimer = 0;
