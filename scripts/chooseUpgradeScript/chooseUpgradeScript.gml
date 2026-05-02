function chooseUpgrade(upgrade, side){
	audio_play_sound(SndUpgrade, 1, 0)
	if (side == "None") {
		switch upgrade {
			case "Vampiric":
				oPlayerManager.vampiric = true;
				break;
			case "Opportunistic":
				oPlayerManager.rightAttackWindowLength *=0.5;
				oPlayerManager.leftAttackWindowLength *=0.5;
				oPlayerManager.leftAttackDamage += 0.75;
				oPlayerManager.rightAttackDamage += 0.75;
				break;
			case "Armored":
				oPlayerManager.armored = true;
				break;
			case "Rapid":
				oPlayerManager.rightAttackFrequency+=0.8
				oPlayerManager.rightAttackFrequency+=0.8
				oPlayerManager.leftAttackDamage-=0.35;
				oPlayerManager.rightAttackDamage-=0.35;
				break;
			case "Mouselike":
				oPlayerManager.rightMovementSpeed += 0.3;
				oPlayerManager.leftMovementSpeed += 0.3;	
				oPlayerManager.rightHitbox*=0.75;
				oPlayerManager.leftHitbox*=0.75;
				break;
			case "Mighty":
				oPlayerManager.leftDefense +=0.8
				oPlayerManager.rightDefense +=0.8
				oPlayerManager.leftAttackDamage+=0.35;
				oPlayerManager.rightAttackDamage+=0.35;
				oPlayerManager.rightMovementSpeed -= 0.5;
				oPlayerManager.leftMovementSpeed -= 0.5;	
				oPlayerManager.leftHitbox*=1.3;
				oPlayerManager.rightHitbox*=1.3;
				break;
			case "Nourished":
				oPlayerManager.nourished = true;
				break;
			case "Wise":
				oPlayerManager.rightAttackWindowLength +=0.5
				oPlayerManager.leftAttackWindowLength +=0.5
				break;
			case "Ferocious":
				oPlayerManager.rightAttackFrequency +=0.3;
				oPlayerManager.leftAttackFrequency +=0.3;
				break;
			case "Resilient":
				oPlayerManager.rightDefense +=0.4;
				oPlayerManager.leftDefense +=0.4;
				break;
			case "Vicious":
				oPlayerManager.rightAttackDamage +=0.35;
				oPlayerManager.leftAttackDamage +=0.35;
				break;
			case "Fast":
				oPlayerManager.rightMovementSpeed += 0.25;
				oPlayerManager.leftMovementSpeed += 0.25;
				break;
			case "Forgiving":
				oPlayerManager.rightAttackPunishMultiplier/=2;
				oPlayerManager.leftAttackPunishMultiplier/=2;
				break;
			case "Stealthy":
				oPlayerManager.rightHitbox*=0.8;
				oPlayerManager.leftHitbox*=0.8;
				break;
			case "Healthy":
				oPlayerManager.maxHp +=2;
				break;
			case "Reactionary":
				oPlayerManager.maxIFrames+=20;
				break;
			case "Versatile":
				oPlayerManager.abilityCooldownMax*=0.8;
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
			case "Synergistic":
				oPlayerManager.synergistic = true;
				break;
			case "Aggressive":
				oPlayerManager.aggressive = true;
				break;
			case "Volatile": 
				oPlayerManager.explosionRadius*=1.75;
				break;
			case "Blistering":
				oPlayerManager.blistering = true;
				break;
			case "Deflective":
				oPlayerManager.deflective = true;
				break;
			case "Transcendent": 
				oPlayerManager.transcendent = true;
				break;
			case "Medicinal":
				oPlayerManager.healAmount = 2;
				break;
			case "Devout":
				oPlayerManager.devout = true;
				break;
			case "Twisted": 
				oPlayerManager.twisted = true;
				break;
			case "Prepared":
				oEverythingManager.playerLives++;
				break;
			case "Sharp":
				oBulletSpeedManager.bulletSpeed-=0.2;
				break;
			case "Intimidating":
				oEverythingManager.regenBase = 150;
				break;
		} 
		
	}
	if (side == "left") {
		switch upgrade {
			case "Wise":
				oPlayerManager.leftAttackWindowLength +=0.5
				break;
			case "Ferocious":
				oPlayerManager.leftAttackFrequency +=0.25;
				break;
			case "Resilient":
				oPlayerManager.leftDefense +=0.4;
				break;
			case "Vicious":
				oPlayerManager.leftAttackDamage +=0.5;
				break;
			case "Fast":
				oPlayerManager.leftMovementSpeed += 0.3;
				break;
			case "Forgiving":
				oPlayerManager.leftAttackPunishMultiplier/=2;
				break;
			case "Stealthy":
				oPlayerManager.leftHitbox*=0.7;
				break;
			case "Healthy":
				oPlayerManager.maxHp +=2;
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
				oPlayerManager.rightDefense +=0.4;
				break;
			case "Vicious":
				oPlayerManager.rightAttackDamage +=0.5;
				break;
			case "Fast":
				oPlayerManager.rightMovementSpeed += 0.3;
				break;
			case "Forgiving":
				oPlayerManager.rightAttackPunishMultiplier/=2;
				break;
			case "Stealthy":
				oPlayerManager.rightHitbox*=0.7;
				break;
			case "Healthy":
				oPlayerManager.maxHp +=2;
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