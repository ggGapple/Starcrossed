if (drawTimer > 0) {
	draw_set_color(choose(c_white,oColorCodes.pink));
	draw_set_alpha(drawTimer / 30);
	draw_line_width(oBinaryStar.x,oBinaryStar.y,oBinaryStarOrbit.x,oBinaryStarOrbit.y,5)
	draw_set_alpha(1);
}