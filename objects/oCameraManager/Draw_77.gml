if (shake_amount > 0) {
    var _x_offset = random_range(-shake_amount, shake_amount);
    var _y_offset = random_range(-shake_amount, shake_amount);
    draw_surface(application_surface, _x_offset, _y_offset);
} else {
    // Draw normally at 0,0 if no shake is happening
    draw_surface(application_surface, 0, 0);
}