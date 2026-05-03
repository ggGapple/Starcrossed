rightDefense = 1;
leftDefense = 2;

leftHpMax = 10;
rightHpMax = 10*log10(oEverythingManager.lightyear*10)

rightHpMax += oEverythingManager.level*2


rightHp = rightHpMax;
leftHp = leftHpMax/2;

leftHpRegenTimer = 200;
regenBase =oEverythingManager.regenBase;
regenMax = regenBase+ 50 /log10(oEverythingManager.lightyear*10);

rightHealthBar = instance_create_depth(0,0,-1,oRightHealthBar);
leftHealthBar = instance_create_depth(0,0,-1,oLeftHealthBar);
image_xscale = 2;
image_yscale = 2;

rotatedAlready = false