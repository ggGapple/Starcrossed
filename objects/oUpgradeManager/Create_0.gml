basicUpgrades = [
"Wise", // + attack window
"Ferocious", // - time between attacks
"Resilient", // + def 
"Vicious", // +attack damage
"Fast", // + speed
"Forgiving", // less punishing if you miss the attack window
"Stealthy" //smaller hitbox
]

descs = {
"Wise": "+attack window length",
"Ferocious": "-time in between attacks",
"Resilient": "+defense",
"Vicious": "+damage",
"Fast": "+speed",
"Forgiving" : "-damage from missing attack window",
"Stealthy" : "-hitbox size"
}

rareUpgrades= [
"Opportunistic", // shorter attack window, much more damage
"Armored" //1 negated attack per round

]

abilityUpgrades = [
"Teleport", //tp in the direction you're moving
"Explode", // destroy all projectiles in a certain radius
"Heal" //heal
]

curUpgrades = ["","",""];
upgradeBoxes = [];
upgradesLeft = basicUpgrades;

depth = -2;

selected = -1;

chosenUpgrades = [];

selectingUpgrade = true;