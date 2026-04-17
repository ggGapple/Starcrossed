// resize
if (surface_get_width(application_surface) != window_get_width() || 
surface_get_height(application_surface) != window_get_height()) {
    surface_resize(application_surface, window_get_width(), window_get_height());
    display_set_gui_size(window_get_width(), window_get_height());
camera_set_view_size(view_camera[0], window_get_width(), window_get_height());
}

// resize gui (for text)
if (display_get_gui_width() != window_get_width()) {
    display_set_gui_size(window_get_width(), window_get_height());
}

uiScale = window_get_height() / 768; //base height