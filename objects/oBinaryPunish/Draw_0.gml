draw_set_color(color);
draw_line_width(oX,oY,oX,oY2,5);
draw_line_width(x,oY2,x,y,5);
if (timer == 0) {
	timer = 15;
	oX = x;
	oY = oY2;
	oY2 = y;
	x += irandom_range(-10,10);
}