if (oPauseManager.paused) {
	return;	
}
y = baseY + yOffset*cos(timer/35);
x = xBase + xOffset;
timer++;
switchTimer++;
if (switchTimer == switchWhen) {
	switchTimer = 0;
	if (switched){
		switched = false
	} else {
		switched = true	
	}
	switchWhen = irandom(300);
}
if (iShouldTakeDamageTimer > 0) {
	xOffset = iShouldTakeDamageTimer*cos(iShouldTakeDamageTimer)/5;	
}

if (switched){
	image_xscale = lerp(-6, -3, 1 - oEnemyManager.leftHp/oEnemyManager.leftHpMax);
}
else {
	image_xscale = lerp(3, 6, oEnemyManager.leftHp/oEnemyManager.leftHpMax);
}
image_yscale = lerp(3, 6, oEnemyManager.leftHp/oEnemyManager.leftHpMax);

if (rotating && image_angle < 360){
	image_angle += 3
}
if (image_angle >= 360){
	image_angle = 0
	rotating = false
}

for (i = 0; i < 3; i++ ) {
	var particle = instance_create_depth(x + irandom_range(-20,20),y+ irandom_range(-20,20),1,oCometParticle);
	particle.image_index = irandom(3)
}