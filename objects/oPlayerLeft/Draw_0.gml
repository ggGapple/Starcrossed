var halfW = sprite_get_width(sprite_index) / 2;
var height = sprite_get_height(sprite_index);

draw_sprite_part_ext(sprite_index, image_index,0,0,  halfW+1, height,           
    x, y, image_xscale, image_yscale,image_blend,image_alpha  
);
if (active and drawExplosion and explosionTimer > 0) {
	explosionTimer--;
	draw_set_color(#EE145B)
	draw_set_alpha(explosionTimer/50);
	draw_circle(x + sprite_get_width(sprite_index)/2*image_xscale,
			y + sprite_get_height(sprite_index)/2*image_yscale,100,false);	
	draw_set_alpha(1);
}