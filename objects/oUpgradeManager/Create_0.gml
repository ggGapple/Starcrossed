basicUpgrades = [
"Wise", // + attack window
"Ferocious", // - time between attacks
"Resilient", // + def 
"Vicious", // +attack damage
"Fast", // + speed
"Forgiving", // less punishing if you miss the attack window
"Stealthy", //smaller hitbox
"Healthy", //more max hp
"Reactionary" // more iframes
]

if (oEverythingManager.level > 3) {
	array_push(basicUpgrades, "Versatile")	
}

descs = {
"Wise": "+attack window length",
"Ferocious": "-time in between attacks",
"Resilient": "+defense",
"Vicious": "+damage",
"Fast": "+speed",
"Forgiving" : "-damage from missing attack",
"Stealthy" : "-hitbox size",
"Healthy" : "+max hp",
"Reactionary" : "+invincibility frames",
"Versatile" : "-ability cooldown",

//special abilities
"Elusive": "+teleport ability (with i frames)",
"Violent": "+explode ability",
"Peaceful": "+heal ability",
"Synergistic" : "+explode triggers on both sides",
"Aggressive" : "+explode slightly damages enemy",
"Volatile" : "x2 explosion radius",
"Blistering" : "+no cooldown, no i-frames",
"Deflective" : "+i-frame damage taken is reflected",
"Transcendent" : "+time stops after teleport",
"Medicinal" : "+heal is more powerful",
"Devout" : "+healing gives armor",
"Twisted" : "+healing damages enemy",
"Prepared" :"+1 life",
"Intimidating" : "+enemy regenerates slower",
"Sharp" : "+projectiles move 20% slower"
}

rareUpgrades= [
"Opportunistic", // shorter attack window, much more damage
"Armored" //1 negated attack per round
]

violentUpgrades = [
"Synergistic", // explode triggers on both sides
"Aggressive", // explode slightly damages boss
"Volatile" // double explosion radius
]
elusiveUpgrades = [
"Blistering", // infinite TP, no i-frames
"Deflective", // reflect i-frame damage
"Transcendent" // time slow
];

peacefulUpgrades = [
"Medicinal", // healing is more powerful
"Devout", // healing armors you
"Twisted" // healing lifesteals from boss
];

upgradesSprites = {
"Wise": sWise,
"Ferocious": sFerocious,
"Resilient": sResilient,
"Vicious": sVicious,
"Fast": sFast,
"Forgiving" : sForgiving,
"Stealthy" : sStealthy,
"Healthy" : sHealthy,
"Reactionary" : sReactionary,
"Versatile" : sVersatile,

//special abilities
"Elusive": sElusive,
"Violent": sViolent,
"Peaceful": sPeaceful,

}


curUpgrades = ["","",""];
upgradeBoxes = [];
upgradesLeft = basicUpgrades;

depth = -2;

selected = -1;

selectingUpgrade = true;
createNewOptions = false;
upgradesString = "Current upgrades: ";
for (i = 0; i < array_length(oPlayerManager.chosen);i++) {
	upgradesString+=oPlayerManager.chosen[i]
	if (i != array_length(oPlayerManager.chosen)-1) {
		upgradesString += ", "
	}
}

curIndex = 0;
curChar = 0;
textSpeed = 0.5;
fullText = "";

curIndex3 = 0;
curChar3 = 0;
fullText3 = "";

curIndex4 = 0;
curChar4 = 0;
fullText4 = "";
yeahWereDone = false;

delay = 60;