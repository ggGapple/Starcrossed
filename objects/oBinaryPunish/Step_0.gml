
if (oPauseManager.paused) {
	return;	
}event_inherited();
if (oY2 > room_height) {
	instance_destroy();
}

if ((x > room_width/2 and oPlayerRight.active) or (x < room_width/2 and oPlayerLeft.active)) {
	y+=projSpeed*24*oEnemyManager.leftHp/oEnemyManager.leftHpMax+0.5;
	oScreenShake.shakeAmount+=0.2;
	timer--;

	image_speed = 1;
} else {
	image_speed = 0;	
}

// separate collisions for the line
var collide1 = collision_line(oX, oY, oX, oY2, oPlayerParent, false, true);
var collide2 = collision_line(x, oY2, x, y, oPlayerParent, false, true);

if (collide1 != noone || collide2 != noone) {
    takeDamage(dmg);
	instance_destroy();
}

