global.freezeBullets = true;
instance_destroy(oAttackManager);
global.dead= true;
audio_play_sound(SndDeath,1,0);
oPlayerLeft.sprite_index = sInactive;
oPlayerRight.sprite_index = sInactive;
instance_create_depth(0,0,-10,oDeathTransition);