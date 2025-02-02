if (global.win)
{
    if (!respawned)
    {
        global.points_p1 += 500;
        
        with (instance_create_depth(x, targetY, depth - 1, obj_pointmarker))
            sprite_index = spr_gunbonus;
    }
    
    instance_destroy();
    exit;
}

if (instance_number(obj_brickparent) > brickThreshold)
    alarm[0] = spawnTime;

if (spawned)
{
    if (y >= targetY && collision_check(vsp, 131))
    {
        instance_create_depth(x, y, depth, obj_gun_pickup);
        y = -50;
        respawned = 1;
        alarm[0] = spawnTime;
        spawned = 0;
    }
    else
    {
        vsp.y = min(vsp.y + grav, 4);
        y += vsp.y;
    }
}
