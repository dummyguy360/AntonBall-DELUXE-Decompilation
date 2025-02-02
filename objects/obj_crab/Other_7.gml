if (turning)
{
    if (facing == 1)
        facing = -1;
    else
        facing = 1;
    
    turning = 0;
    sprite_index = spr_crab;
}

if (sprite_index == spr_crab_flattened)
    image_speed = 0;
