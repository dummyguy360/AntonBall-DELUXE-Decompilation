event_inherited();

var _onVulnerableHit = function(argument0, argument1)
{
    if (argument1 == image_xscale || heldPunchball != -4)
    {
        method_inherited(onVulnerableHit);
        
        if (instance_exists(heldPunchball))
        {
            heldPunchball.x = x;
            heldPunchball.y = y;
            heldPunchball.hsp = 0;
            heldPunchball.vsp = -1;
            heldPunchball = -4;
        }
    }
    else if (stunRecoveryTimer <= 0)
    {
        currentlyMoving = 0;
        heldPunchball = argument0;
        waveTimer = waveTime;
        argument0.y = 9999;
    }
};

inherit_method("onVulnerableHit", _onVulnerableHit);
heldPunchball = -4;
waveTime = 120;
waveTimer = waveTime;
spawnSprite = spr_mitt_spawn;
corpseSprite = spr_mitt_corpse;
turnaroundSprite = spr_mitt_turn;
stunSprites = [[970], [961], [668, sprite_get_duration(668) + sprite_get_duration(961)]];
