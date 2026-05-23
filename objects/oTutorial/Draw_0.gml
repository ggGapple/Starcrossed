// wasd
var player = 0;
if (oPlayerLeft.active) {
	player = oPlayerLeft;
} else {
	player = oPlayerRight;	
} if (justGl) {
	draw_set_alpha(a1)
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_font(FntSuggestion);
	draw_text(room_width/2,80,
	"Good luck! [space]")
	draw_set_alpha(1)
	draw_set_halign(fa_left)
} else if (!didWasd) {
	draw_sprite_ext(sArrow,0, player.x, player.y-45,2.5,2.5,0,c_white,a1)
	draw_sprite_ext(sW,0,player.x,player.y-90,2.25,2.25,0,c_white,a1)

	draw_sprite_ext(sArrow,0, player.x-45, player.y,2.5,2.5,90,c_white,a2)
	draw_sprite_ext(sA,0,player.x-90,player.y,2.25,2.25,0,c_white,a2)

	draw_sprite_ext(sArrow,0, player.x, player.y+45,2.5,2.5,180,c_white,a3)
	draw_sprite_ext(sS,0,player.x,player.y+90,2.25,2.25,0,c_white,a3)

	draw_sprite_ext(sArrow,0, player.x+45, player.y,2.5,2.5,270,c_white,a4)
	draw_sprite_ext(sD,0,player.x+90,player.y,2.25,2.25,0,c_white,a4)
} else if (!didRight) {
	draw_sprite_ext(sArrowLong,0, oPlayerLeft.x+25, oPlayerLeft.y,2.5,2.5,270,c_white,a1)
	draw_sprite_ext(sR,0,room_width/2,oPlayerLeft.y-32,2.25,2.25,0,c_white,a1)
} else if (!didLeft) {
	draw_sprite_ext(sArrowLong,0, oPlayerRight.x-25, oPlayerRight.y,2.5,2.5,90,c_white,a1)
	draw_sprite_ext(sL,0,room_width/2,oPlayerRight.y-32,2.25,2.25,0,c_white,a1)	
} else if (!didAttack) {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_font(FntSuggestion);
	draw_set_alpha(a1)
	draw_text(player.x,player.y-70,"When a  appears, press          in time to attack")
	draw_set_color(c_yellow)
	draw_text(player.x - string_width
	("When a   appears, press          in time to attack")/2 + string_width(
	"When a "
	)+2,player.y-70 ,"!")
	draw_set_alpha(1)
	draw_set_color(c_white);
	draw_set_halign(fa_left)
	draw_sprite_ext(sU,0,player.x+23,player.y-70+ string_height("When a  appears, press         in time to attack")/2,2.25,2.25,0,c_white,a1)	
} else if (!didDown) {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_font(FntSuggestion);
	draw_set_alpha(a1)
	draw_text(player.x,player.y-70,"Once you unlock your ability, press          anytime to activate")
	draw_set_alpha(1)
	draw_set_color(c_white);
	draw_set_halign(fa_left)
	draw_sprite_ext(sDown,0,player.x+60,player.y-70+ string_height("Once you unlock your ability, press          anytime to activate")/2,2.25,2.25,0,c_white,a1)	
} else if (!didLeftHp) {
	draw_set_alpha(a1)
	draw_set_halign(fa_center)
	draw_set_color(c_white);
	draw_set_font(FntSuggestion);
	draw_text(room_width/4,80,
	"Left bar controls projectile spawn rates and speed [space]")
	draw_set_alpha(1)
	draw_set_halign(fa_left)
}  else if (!didRightHp) {
	draw_set_alpha(a1)
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_font(FntSuggestion);
	draw_text(room_width*3/4,80,
	"Right bar is enemy health, get this to 0 to beat the level [space]")
	draw_set_alpha(1)
	draw_set_halign(fa_left)
} else if (!didFinal) {
	draw_set_alpha(a1)
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_font(FntSuggestion);
	draw_text(room_width/2,80,
	"Make sure to switch often and use your special. Good luck!")
	draw_set_alpha(1)
	draw_set_halign(fa_left)
} 

