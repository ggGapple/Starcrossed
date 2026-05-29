if ((oPlayerManager.armored && oPlayerManager.stillArmored) || 
(oPlayerManager.healArmored && oPlayerManager.stillArmored)){
	draw_sprite_ext(armoredSprite,0,x,y,image_xscale+0.3,image_yscale+0.3,0,c_white,0.8);
}
draw_self();

if (drawExplosion and explosionTimer > 0 ) {
	explosionTimer--;
	draw_set_color(#EE145B)
	draw_set_alpha(explosionTimer/50);
	draw_circle(x,
			y,oPlayerManager.explosionRadius,false);	
	draw_set_alpha(1);
}

