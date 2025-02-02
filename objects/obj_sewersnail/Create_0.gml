event_inherited();

onVulnerableHit = function(argument0, argument1)
{
    kill(argument1);
};

playerDetectionRange = 50;
slimeBlockAnimations = [602, 781];
currentSlimeBlockAnimation = 0;
spawnSprite = spr_snail_spawn;
turnaroundSprite = spr_snail_turnaround;
corpseSprite = spr_snail_corpse;
