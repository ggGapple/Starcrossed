function moveVignette(){
	if (oPlayerLeft.active) {
		oVignetteLeft.out = true;
		oVignetteRight.in = true;
	} else {
		oVignetteLeft.in = true;
		oVignetteRight.out = true;
	}
}