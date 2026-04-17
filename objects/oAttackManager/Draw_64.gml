if (attackWindow > 0) {
    draw_set_font(FntMedium);
    draw_set_color(#FFF568);

    var _target = oPlayerLeft.active ? oPlayerLeft : oPlayerRight;
    var _offX   = oPlayerLeft.active ? 6 : 10;

    // Since no camera, we just need to know how much bigger the GUI is than the Room
    // If your room is 1366x768 and your window is 1366x768, these ratios are 1.
    var _ratioX = display_get_gui_width() / room_width;
    var _ratioY = display_get_gui_height() / room_height;

    var _guiX = _target.x * _ratioX;
    var _guiY = _target.y * _ratioY;

    draw_text_transformed(
        _guiX + (_offX * oResolutionManager.uiScale),
        _guiY - (43 * oResolutionManager.uiScale),
        "!",
        oResolutionManager.uiScale,
        oResolutionManager.uiScale,
        0
    );
}