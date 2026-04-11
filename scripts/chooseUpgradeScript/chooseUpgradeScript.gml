function chooseUpgrade(upgrade){
	switch upgrade {
		case "Wise":
			oPlayerManager.attackWindowLength +=0.2
			break;
		case "Ferocious":
			oPlayerManager.attackFrequency +=0.15;
			break;
		case "Resilient":
			oPlayerManager.defense +=0.1;
			break;
		case "Vicious":
			oPlayerManager.attackDamage +=0.5;
			break;
		case "Fast":
			oPlayerManager.movementSpeed += 0.15;
			break;
		case "Forgiving":
			oPlayerManager.attackPunishMultiplier-=0.3;
			break;
		case "Stealthy":
			oPlayerManager.hitboxSize-=0.15;
			break;
		case "Healthy":
			oPlayerManager.maxHp +=1;
			break;
		case "Reactionary":
			oPlayerManager.maxIFrames+=2;
			break;
		case "Elusive":
			oPlayerManager.elusive = true;
			break;
		case "Violent":
			oPlayerManager.violent = true;
			break;
		case "Peaceful": 
			oPlayerManager.peaceful = true;
			break;
	}
}

/*"Wise", // + attack window
"Ferocious", // - time between attacks
"Resilient", // + def 
"Vicious", // +attack damage
"Fast", // + speed
"Forgiving", // less punishing if you miss the attack window
"Stealthy", //smaller hitbox
"Healthy", //more max hp
"Reactionary" // more iframes

*/