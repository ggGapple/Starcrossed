if (shake_amount > 0) {
    shake_amount *= shake_decay;
    
    // If it gets small enough, just kill it
    if (shake_amount < 0.1) shake_amount = 0;
}