rightDefense = 1;
leftDefense = 1; //0 to 1; closer to zero is higher defense (i know it's stupid and inconsistent mb)

leftHpMax = 10;
rightHpMax = 10*log10(oEverythingManager.lightyear*10)

rightHpMax += oEverythingManager.level*2


rightHp = rightHpMax;
leftHp = leftHpMax/2;

leftHpRegenTimer = 200;

rightHealthBar = instance_create_depth(0,0,-1,oRightHealthBar);
leftHealthBar = instance_create_depth(0,0,-1,oLeftHealthBar);
image_xscale = 2;
image_yscale = 2;

rotatedAlready = false