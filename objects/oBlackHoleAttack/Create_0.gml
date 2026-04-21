if (oPlayerLeft.active) {
	x = oBoundingBoxLeft.x;
	y = oBoundingBoxLeft.y;
	image_xscale = oBoundingBoxLeft.lenX/sprite_get_width(sButton);
	image_yscale = oBoundingBoxLeft.lenY/sprite_get_height(sButton);
} else {
	x = oBoundingBoxRight.x;
	y = oBoundingBoxRight.y;
	image_xscale = oBoundingBoxRight.lenX/sprite_get_width(sButton);
	image_yscale = oBoundingBoxRight.lenY/sprite_get_height(sButton);
}

image_alpha = 0;

boomTimer = -1000;