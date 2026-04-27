maxTimer = 15;
timerVertical = maxTimer/(100);
timerHorizontal = maxTimer/(100);
active = false;
projectiles = [oRedProjectileHorizontal, oRedProjectileVertical,oYellowProjectileHorizontal,
oYellowProjectileVertical,oSpinningProjectileHorizontal,oSpinningProjectileVertical,
oCircleProjectileHorizontal,oCircleProjectileResidue,oCircleProjectileVertical,
oDiagonalProjectileHorizontal,oDiagonalProjectileVertical,oSnakeProjectileHorizontal,
oSnakeProjectileVertical]

undodgeableTimer = 250;
if (oEverythingManager.lightyear == 1) {
	maxUndodgeableTimer = 700;	
} else if (oEverythingManager.lightyear == 10) {
	maxUndodgeableTimer = 6;	
} else if (oEverythingManager.lightyear == 100) {
	maxUndodgeableTimer = 16;
}