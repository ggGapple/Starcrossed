maxTimer = 15;
timerVertical = maxTimer/(100);
timerHorizontal = maxTimer/(100);
active = false;
projectiles = [oRedProjectileHorizontal, oRedProjectileVertical,oYellowProjectileHorizontal,
oYellowProjectileVertical,oSpinningProjectileHorizontal,oSpinningProjectileVertical,
oCircleProjectileHorizontal,oCircleProjectileResidue,oCircleProjectileVertical,
oDiagonalProjectileHorizontal,oDiagonalProjectileVertical,oSnakeProjectileHorizontal,
oSnakeProjectileVertical, oShurikenHorizontal, oShurikenVertical, oAccelerativeHorizontal,
oAccelerativeVertical,oSplitProjectileHorizontal,oSplitProjectileVertical,
oExpanderProjectileHorizontal,oExpanderProjectileVertical,oYellowProjectileSplit]

undodgeableTimer = 100;
if (oEverythingManager.lightyear == 1) {
	maxUndodgeableTimer = 300;	
} else if (oEverythingManager.lightyear == 10) {
	maxUndodgeableTimer = 6;	
} else if (oEverythingManager.lightyear == 100) {
	maxUndodgeableTimer = 16;
}