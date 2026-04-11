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