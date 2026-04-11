if (yOffset < -20) {
	goinUp = 1;
} else if (yOffset > 20) {
	goinUp = -1;
}

yOffset += goinUp * 0.3