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
"Elusive": "+teleport ability",
"Violent": "+explode ability",
"Peaceful": "+heal ability",

}

rareUpgrades= [
"Opportunistic", // shorter attack window, much more damage
"Armored" //1 negated attack per round

]


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

curIndex2 = 0;
curChar2 = 0;
fullText2 = "";
delay = 60;