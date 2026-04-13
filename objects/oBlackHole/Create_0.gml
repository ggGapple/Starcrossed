redSprite = sBlackHole2Red;
switch oEverythingManager.level {
	case 0:
		instance_destroy();
		break;
	case 1:
		sprite_index = sBlackHole2;
		break;
	case 2:
		sprite_index = sBlackHole1;
		redSprite = sBlackHole1Red;
		break;
	case 3:
		sprite_index = sBlackHole3;
		redSprite = sBlackHole3Red;
		break;
	case 4:
		sprite_index = sBlackHole4;
		redSprite = sBlackHole4Red;
		break;
	case 5:
		sprite_index = sBlackHole5;
		redSprite = sBlackHole5Red;
		break;
	
}

image_xscale = 3;
image_yscale = 3;
image_angle = 0;
rotating = false
xBase = room_width/2
xOffset = 0;
baseY = 84;
timer = 0;
yOffset = 10;
switchTimer = 0;
switchWhen = irandom(300);
iShouldTakeDamageTimer = 0;