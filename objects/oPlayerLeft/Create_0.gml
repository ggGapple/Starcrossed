active = false;
image_xscale = oPlayerManager.leftHitbox;
image_yscale = oPlayerManager.rightHitbox;
drawExplosion = false;
explosionTimer = 50;

// reset max hp on enter room (which coincides with this guy's creation)
oPlayerManager.hp = oPlayerManager.maxHp;

attackSpriteTimer = 0;
maxAttackSpriteTimer = 15;