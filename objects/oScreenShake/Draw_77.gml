// for shaking non draw-gui stuff
if (shakeAmount > 0) {
    draw_surface(application_surface, shakeX, shakeY);
} else {
    draw_surface(application_surface, 0, 0);
}
