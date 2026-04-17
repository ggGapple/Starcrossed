image_angle ++;
if (oPlayerRight.active) {
	x = lerp(x,oPlayerRight.x+(sprite_get_width(oPlayerRight.sprite_index)-
	sprite_get_xoffset(oPlayerRight.sprite_index))*oPlayerRight.image_xscale/2,0.1)
	y = lerp(y, oPlayerRight.y,0.1)
} else {
	x = lerp(x,oPlayerLeft.x-(sprite_get_width(oPlayerLeft.sprite_index))*oPlayerLeft.image_xscale/2,
	0.1)
	y = lerp(y, oPlayerLeft.y,0.1)	
}