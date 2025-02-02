event_inherited();

onStunRecovery = function()
{
    if (!lastStanding)
        walkSpeed = 0.5;
    
    paletteIndex = 2;
};

onArcadeBallHit = function(argument0)
{
    kill(argument0);
};

spawnSprite = spr_mole_spawn;
corpseSprite = spr_mole_dead;
turnaroundSprite = spr_mole_turnaround;
palette = 94;
stunSprites = [[120], [122], [126, 140], [121, sprite_get_duration(121) + sprite_get_duration(126)]];
