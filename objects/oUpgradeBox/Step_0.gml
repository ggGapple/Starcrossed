if (timer >=30) {
	timer--;	
}
else if (timer > -10 and timer < 30) {
	timer--;
	y = lerp(y, tempY+8, 0.1); 
}
else if (timer == -10) {
    timer--;
    y = tempY;
}