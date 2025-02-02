event_inherited();
spawnSprite = spr_frog_spawn;
corpseSprite = spr_frog_corpse;
stunSprites = [[460], [379], [547, sprite_get_duration(547) + sprite_get_duration(379)]];
jumpPause = 60;
jumpSquat = 45;
jumpStrength = new vector2(1, 2);
jumpTimer = 0;
