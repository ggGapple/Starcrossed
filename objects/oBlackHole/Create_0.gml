switch oEverythingManager.level {
	case 0:
		instance_destroy();
		break;
	case 1:
		sprite_index = sBlackHole1;
		break;
	case 2:
		sprite_index = sBlackHole2;
		break;
	case 3:
		sprite_index = sBlackHole3;
		break;
	case 4:
		sprite_index = sBlackHole4;
		break;
	case 5:
		sprite_index = sBlackHole5;
		break;
	
}

image_xscale = 3;
image_yscale = 3;
x = room_width/2
baseY = 75;
timer = 0;
yOffset = 10;
switchTimer = 0;
switchWhen = irandom(300);