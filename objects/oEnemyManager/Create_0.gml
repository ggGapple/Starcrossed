rightDefense = 1;
leftDefense = 1; //0 to 1; closer to zero is higher defense (i know it's stupid and inconsistent mb)


rightHpMax = 20;
leftHpMax = 20;

rightHp = rightHpMax;
leftHp = 10;

leftHpRegenTimer = 260;

rightHealthBar = instance_create_depth(0,0,-1,oRightHealthBar);
leftHealthBar = instance_create_depth(0,0,-1,oLeftHealthBar);