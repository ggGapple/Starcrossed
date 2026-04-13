function chooseUpgrade(upgrade, side){
	audio_play_sound(SndUpgrade, 1, 0)
	if (side == "left") {
		switch upgrade {
			case "Wise":
				oPlayerManager.leftAttackWindowLength +=0.5
				break;
			case "Ferocious":
				oPlayerManager.leftAttackFrequency +=0.25;
				break;
			case "Resilient":
				oPlayerManager.leftDefense +=0.5;
				break;
			case "Vicious":
				oPlayerManager.leftAttackDamage +=0.5;
				break;
			case "Fast":
				oPlayerManager.leftMovementSpeed += 0.3;
				break;
			case "Forgiving":
				oPlayerManager.leftAttackPunishMultiplier*=0.5;
				break;
			case "Stealthy":
				oPlayerManager.leftHitbox*=0.7;
				break;
			case "Healthy":
				oPlayerManager.maxHp +=1;
				break;
			case "Reactionary":
				oPlayerManager.maxIFrames+=10;
				break;
			case "Versatile":
				oPlayerManager.abilityCooldownMax-=40;
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
	} else if (side =="right") {
		switch upgrade {
			case "Wise":
				oPlayerManager.rightAttackWindowLength +=0.5
				break;
			case "Ferocious":
				oPlayerManager.rightAttackFrequency +=0.25;
				break;
			case "Resilient":
				oPlayerManager.rightDefense +=0.5;
				break;
			case "Vicious":
				oPlayerManager.rightAttackDamage +=0.5;
				break;
			case "Fast":
				oPlayerManager.rightMovementSpeed += 0.3;
				break;
			case "Forgiving":
				oPlayerManager.rightAttackPunishMultiplier*=0.5;
				break;
			case "Stealthy":
				oPlayerManager.rightHitbox*=0.7;
				break;
			case "Healthy":
				oPlayerManager.maxHp +=1;
				break;
			case "Reactionary":
				oPlayerManager.maxIFrames+=10;
				break;
			case "Versatile":
				oPlayerManager.abilityCooldownMax-=40;
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