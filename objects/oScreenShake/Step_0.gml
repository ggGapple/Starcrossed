if (shakeAmount > 0) {
    shakeAmount *= shakeDecay;
    shakeX = random_range(-shakeAmount*oResolutionManager.uiScale, shakeAmount*oResolutionManager.uiScale);
    shakeY = random_range(-shakeAmount*oResolutionManager.uiScale, shakeAmount*oResolutionManager.uiScale);
    
    if (shakeAmount < 0.1) {
        shakeAmount = 0;
        shakeX = 0;
        shakeY = 0;
    }
}