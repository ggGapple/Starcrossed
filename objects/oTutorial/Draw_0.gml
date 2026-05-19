// wasd
var player = 0;
if (oPlayerLeft.active) {
	player = oPlayerLeft;
} else {
	player = oPlayerRight;	
}
if (!array_contains(done,"A")) {
	draw_sprite_ext(sArrow,0, player.x, player.y-15,2.5,2.5,0,c_white,1)
	draw_sprite_ext(sW,0,player.x,player.y-40,2.5,2.5,0,c_white,1)
}