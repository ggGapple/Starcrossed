redSprite = sBinaryRed;
image_index = oEverythingManager.level - 1;
image_xscale = 6
image_yscale =6;
image_angle = 0;
depth = -2;
rotating = false
switched = 1
xBase = room_width/2
yBase = 120;

radius = 40;
orbitSpeed = oEverythingManager.level;
angle = 0;

timer = 0;
switchTimer = 0;
switchWhen = irandom(300);
iShouldTakeDamageTimer = 0;
instance_create_depth(x,y,depth,oBinaryStarOrbit)