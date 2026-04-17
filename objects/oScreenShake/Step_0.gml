if (shakeAmount > 0) {
    shakeAmount *= shakeDecay;
    if (shakeAmount < 0.1) shakeAmount = 0;
}