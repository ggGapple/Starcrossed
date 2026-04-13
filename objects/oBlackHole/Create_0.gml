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

image_xscale = 2;
image_yscale = 2;
x = room_width/2 -sprite_width/2
y = 15;