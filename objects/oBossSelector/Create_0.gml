if (oEverythingManager.lightyear == 1 && oEverythingManager.level != 0) {
	instance_create_depth(x,y,depth,oBlackHole);	
} else if (oEverythingManager.lightyear == 10&& oEverythingManager.level != 0) {
	instance_create_depth(x,y,depth,oComet);	
}  else if (oEverythingManager.lightyear == 100&& oEverythingManager.level != 0) {
	instance_create_depth(x,y,depth,oBinaryStar);	
}
instance_destroy()