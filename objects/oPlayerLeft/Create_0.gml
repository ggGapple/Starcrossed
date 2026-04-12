active = false;
image_xscale = oPlayerManager.hitboxSize;
image_yscale = oPlayerManager.hitboxSize;
drawExplosion = false;
explosionTimer = 50;

// reset max hp on enter room (which coincides with this guy's creation)
oPlayerManager.hp = oPlayerManager.maxHp;

attackSpriteTimer = 0;
maxAttackSpriteTimer = 15;