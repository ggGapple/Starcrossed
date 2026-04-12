image_angle ++;
if (oPlayerRight.active) {
	x = lerp(x,oPlayerRight.x+oPlayerRight.image_xscale*sprite_get_width(oPlayerRight.sprite_index)/2,0.1)
	y = lerp(y, oPlayerRight.y+oPlayerRight.image_yscale*sprite_get_height(oPlayerRight.sprite_index)/2,0.1)
} else {
	x = lerp(x,oPlayerLeft.x+oPlayerLeft.image_xscale*sprite_get_width(oPlayerLeft.sprite_index)/2,0.1)
	y = lerp(y, oPlayerLeft.y+oPlayerLeft.image_yscale*sprite_get_height(oPlayerLeft.sprite_index)/2,0.1)	
}