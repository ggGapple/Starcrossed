if (shakeAmount > 0) {
    var _x_offset = random_range(-shakeAmount, shakeAmount);
    var _y_offset = random_range(-shakeAmount, shakeAmount);
    draw_surface(application_surface, _x_offset, _y_offset);
} else {
    draw_surface(application_surface, 0, 0);
}