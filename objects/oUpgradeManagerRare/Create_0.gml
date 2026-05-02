basicUpgrades = [
"Vampiric",
"Opportunistic",
"Armored",
"Rapid",
"Mouselike",
"Mighty",
"Nourished"
]


descs = {
"Vampiric" : "+passive damage, --defense",
"Opportunistic" : "-attack window length, +damage",
"Armored" : "+negate first hit each round",
"Rapid" : "-time between attacks, -damage",
"Mouselike" : "-hitbox size, +speed",
"Mighty" : "+defense, +damage, -speed, +size",
"Nourished" : "+passive regen"
}

rareUpgrades= [
"Opportunistic", // shorter attack window, much more damage
"Armored" //1 negated attack per round
]

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
"Vampiric" : sVampiric,
"Opportunistic" : sOpportunistic,
"Armored" : sArmored,
"Rapid" : sRapid,
"Mouselike" : sMouselike,
"Mighty" : sMighty,
"Nourished" : sNourished

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
	if (string_width(upgradesString + oPlayerManager.chosen[i]) > room_width) {
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