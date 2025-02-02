if (instance_place(x, y, obj_player))
{
    if (!steppedon && (obj_player.vsp > 0.1 || obj_player.hsp != 0))
    {
        audio_play_sound(snd_flatten, 1, false);
        steppedon = 1;
        notstepping = 0;
    }
}

if (steppedon)
{
    sprite_index = spr_crab_flattened;
    turning = 0;
    hsp = 0;
}

if (!instance_place(x, y, obj_player))
    steppedon = 0;

if (!steppedon)
{
    image_speed = 1;
    
    if (turning)
    {
        sprite_index = spr_crab_turning;
        hsp = 0;
    }
    else
    {
        sprite_index = spr_crab;
        hsp = wsp * facing;
    }
}
