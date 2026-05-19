function chooseUpgrade(upgrade){
	audio_play_sound(SndUpgrade, 1, 0)
	switch upgrade {
		case "Vampiric":
			oPlayerManager.vampiric = true;
			oPlayerManager.attackDamage-=0.2;
			break;
		case "Opportunistic":
			oPlayerManager.attackWindowLength *=0.5;
			oPlayerManager.attackDamage += 0.75;
			break;
		case "Armored":
			oPlayerManager.armored = true;
			break;
		case "Rapid":
			oPlayerManager.attackFrequency+=0.8
			oPlayerManager.attackDamage-=0.35;
			break;
		case "Mouselike":
			oPlayerManager.movementSpeed += 0.3;
			oPlayerManager.hitbox*=0.75;
			break;
		case "Mighty":
			oPlayerManager.defense +=0.8
			oPlayerManager.attackDamage+=0.35;
			oPlayerManager.movementSpeed -= 0.5;					
			oPlayerManager.hitbox*=1.3;
			break;
		case "Nourished":
			oPlayerManager.nourished = true;
			break;
		case "Wise":
			oPlayerManager.attackWindowLength +=0.5
			break;
		case "Ferocious":
			oPlayerManager.attackFrequency +=0.3;
			break;
		case "Resilient":
			oPlayerManager.defense +=0.4;
			break;
		case "Vicious":
			oPlayerManager.attackDamage +=0.35;
			break;
		case "Fast":
			oPlayerManager.movementSpeed += 0.25;
			break;
		case "Forgiving":
			oPlayerManager.attackPunishMultiplier/=2;
			break;
		case "Stealthy":
			oPlayerManager.hitbox*=0.8;
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
			oEverythingManager.regenBase += 35;
			break;
	} 
}