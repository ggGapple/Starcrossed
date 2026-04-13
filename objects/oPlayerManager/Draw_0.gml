// draw ability cooldown
if ((elusive or violent or peaceful) and abilityCooldown > 0) {
	draw_set_color(#3F464C);
	draw_rectangle(room_width-abilityLenX-10,room_height-abilityLenY-5,
	room_width-10,room_height-10,false);
	draw_set_color(#707d87)
	draw_rectangle(room_width-abilityLenX-10,room_height-abilityLenY-5,
	room_width-10-abilityLenX*abilityCooldown/abilityCooldownMax,room_height-10,false);
} else if ((elusive or violent or peaceful) and (room == CombatRoom)) {
	draw_sprite_ext(sAbilityIndicator,0,room_width-33,room_height-48,3,3,0,c_white,1);	
}