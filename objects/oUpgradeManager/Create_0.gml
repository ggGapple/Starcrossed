basicUpgrades = [
"Wise", // + attack window
"Ferocious", // - time between attacks
"Resilient", // + def 
"Vicious", // +attack damage
"Fast", // + speed
"Forgiving", // less punishing if you miss the attack window
"Stealthy", //smaller hitbox
"Healthy", //more max hp
"Reactionary", // more iframes
"Nimble",
"Lucky"
]

if (oEverythingManager.level > 3) {
	array_push(basicUpgrades, "Versatile")	
}

descs = {
"Wise": "+attack window length",
"Ferocious": "+attack frequency",
"Resilient": "+defense",
"Vicious": "+damage",
"Fast": "+speed",
"Forgiving" : "-damage from missing attack",
"Stealthy" : "-hitbox size",
"Healthy" : "+max hp",
"Reactionary" : "+invincibility frames",
"Versatile" : "-ability cooldown",
"Nimble" : "+dodge chance",
"Lucky" : "+crit chance",

//special abilities
"Elusive": "+teleport ability (with i frames)",
"Violent": "+explode ability",
"Peaceful": "+heal ability",
"Synergistic" : "+explode triggers on both sides",
"Aggressive" : "+explode slightly damages enemy",
"Volatile" : "x2 explosion radius",
"Blistering" : "+no cooldown, near zero i-frames",
"Deflective" : "+i-frame damage taken is reflected",
"Transcendent" : "+time stops after teleport",
"Medicinal" : "+heal is more powerful",
"Devout" : "+healing gives shield",
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
"Nimble" : sNimble,
"Lucky" : sLucky,

//special abilities
"Elusive": sElusive,
"Violent": sViolent,
"Peaceful": sPeaceful,

}


curUpgrades = ["","",""];
upgradeBoxes = [];
upgradesLeft = basicUpgrades;

depth = -2;

selected = 1;

selectingUpgrade = true;
createNewOptions = false;
upgradesString = "Current upgrades: ";
upgradesString2 = "";
draw_set_font(FntSuggestion);
for (i = 0; i < array_length(oPlayerManager.chosen);i++) {
	if (string_width(upgradesString + oPlayerManager.chosen[i])+10 > room_width) {
		upgradesString2 += oPlayerManager.chosen[i];
		if (i != array_length(oPlayerManager.chosen)-1) {
			upgradesString2 += ", "
		}
	} else {
		upgradesString+=oPlayerManager.chosen[i]
		if (i != array_length(oPlayerManager.chosen)-1) {
			upgradesString += ", "
		}
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

curIndex5 = 0;
curChar5 = 0;
fullText5 = "";
yeahWereDone = false;

delay = 60;
wereWePausedLastFrame = false;