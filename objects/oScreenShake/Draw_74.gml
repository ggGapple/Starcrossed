// to shake draw gui stuff, we do some fancy matrix bs (it's actually kinda interesting)
if (shakeAmount > 0) {
    var _mat = matrix_build(shakeX, shakeY, 0, 0, 0, 0, 1, 1, 1);
    matrix_set(matrix_world, _mat);
}