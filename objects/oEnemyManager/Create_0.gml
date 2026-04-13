rightDefense = 1;
leftDefense = 1; //0 to 1; closer to zero is higher defense (i know it's stupid and inconsistent mb)


rightHpMax = 20;
leftHpMax = 10;

rightHp = rightHpMax;
leftHp = 5;

leftHpRegenTimer = 200;

rightHealthBar = instance_create_depth(0,0,-1,oRightHealthBar);
leftHealthBar = instance_create_depth(0,0,-1,oLeftHealthBar);
image_xscale = 2;
image_yscale = 2;

rotatedAlready = false