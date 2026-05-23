if (oEverythingManager.level !=0) {
	oProjectileManager.active = true;
	instance_destroy();	
}

if (!justGl) {
if (keyboard_check_pressed(ord("W"))) {
	array_push(done,"W")	
}
if (keyboard_check_pressed(ord("A"))) {
	array_push(done,"A")	
}
if (keyboard_check_pressed(ord("D"))) {
	array_push(done,"D")	
}
if (keyboard_check_pressed(ord("S"))) {
	array_push(done,"S")	
}

if (keyboard_check_pressed(vk_right) && didWasd) {
	array_push(done,"R")	
}

if (keyboard_check_pressed(vk_left) && didRight) {
	array_push(done,"L")	
}


if (keyboard_check_pressed(vk_up) && didLeft) {
	array_push(done,"U")	
}

if (keyboard_check_pressed(vk_down) && didAttacks) {
	array_push(done,"Down")	
}

if (keyboard_check_pressed(vk_space) && !didLeftHp && didDown) {
	array_push(done,"LHP")	
}

if (keyboard_check_pressed(vk_space) && !didRightHp && didLeftHp) {
	array_push(done,"RHP")	
}

if (keyboard_check_pressed(vk_space) && didRightHp && !didFinal) {
	array_push(done,"GL")	
}

}

if (keyboard_check_pressed(vk_space) && justGl) {
	room_goto(UpgradesRoom);	
}



if ((a1 < 1 && !array_contains(done,"W")) || 
(a1 < 1 && !array_contains(done,"R") && !didRight && didWasd) ||
(a1 < 1 && !array_contains(done,"L") && !didLeft && didRight) ||
(a1 < 1 && !array_contains(done,"U") && !didAttack && didLeft) ||
(a1 < 1 && !array_contains(done,"Down") && !didDown && didAttacks) ||
(a1 < 1 && !array_contains(done,"LHP") && !didLeftHp && didDown) ||
(a1 < 1 && !array_contains(done,"RHP") && !didRightHp && didLeftHp) ||
(a1 < 1 && !array_contains(done,"GL") && !didFinal && didRightHp) ||
(a1 < 1 && !array_contains(done,"OGL") && !didOGL && justGl)
) {
	a1+=0.02
}
if (a2 < 1 && !array_contains(done,"A")) {
	a2+=0.02
}
if (a3 < 1 && !array_contains(done,"S")) {
	a3+=0.02
}
if (a4 < 1 && !array_contains(done,"D")) {
	a4+=0.02
}

if ((a1 > 0 && array_contains(done,"W") && !didWasd) || 
(a1 > 0 && array_contains(done,"R") && didWasd && !didRight) ||
(a1 > 0 && array_contains(done,"L") && didRight && !didLeft)) ||
(a1 > 0 && array_contains(done,"U") && didLeft && !didAttack) ||
(a1 > 0 && array_contains(done,"Down") && didAttacks && !didDown) ||
(a1 > 0 && array_contains(done,"LHP") && didDown && !didLeftHp)||
(a1 > 0 && array_contains(done,"RHP") && didLeftHp && !didRightHp) ||
(a1 > 0 && array_contains(done,"GL") && didRightHp && !didFinal){
	a1-=0.04
}
if (a2 > 0 && array_contains(done,"A")) {
	a2-=0.04
}
if (a3 > 0 && array_contains(done,"S")) {
	a3-=0.04
}
if (a4 > 0 && array_contains(done,"D")) {
	a4-=0.04
}


if (array_contains(done, "W") &&  array_contains(done, "A") && 
array_contains(done, "S") && array_contains(done, "D") && a1 <= 0) {
	didWasd = true;	
}
if (array_contains(done,"R") && a1 <= 0) {
	didRight = true;	
}

if (array_contains(done,"L") && a1 <= 0) {
	didLeft = true;	
}
if (array_contains(done,"U") && a1 <=0) {
	didAttack = true;	
} 

if (array_contains(done,"U") && attacks >=2) {
	didAttacks = true;	
	oPlayerManager.violent = true;
}

if (array_contains(done,"Down") && a1 <=0) {
	didDown = true;
}

if (array_contains(done,"LHP") && a1 <=0) {
	didLeftHp = true;
} 

if (array_contains(done,"RHP") && a1 <=0) {
	didRightHp = true;
} 

if (array_contains(done,"GL") && a1<=0) {
	didFinal = true;	
}

if (didLeft && !didAttack && !startedAttack) {
	startedAttack = true;
	oAttackManager.customStartAttack = true;	
}

if (attacks<2 &&didAttack) {
	oAttackManager.doMoreAttacks = true;
}

if (attacks >=2) {
	oAttackManager.doMoreAttacks = false;	
}


if (didFinal) {
	oEverythingManager.doneTutorial = true;
	oPlayerManager.violent = false;
	room_goto(UpgradesRoom);	
}
