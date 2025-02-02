b_on_ground = !dead && (check_below() || check_below_passthrough() || check_slope() || check_below_throwable());

if (currentstate != UnknownEnum.Value_4 || UnknownEnum.Value_5)
{
    if (b_on_ground)
    {
        b_touched_ground = 1;
        
        if (b_candash == 0 && candash_counter > 0)
            candash_counter -= 1;
        
        vsp = 0;
        b_jumped = 0;
        b_backflipped = 0;
        coyote_counter = coyote_max;
    }
    else
    {
        vsp += gsp;
        
        if (vsp > maxfall)
            vsp = maxfall;
    }
}

if (currentstate == UnknownEnum.Value_4)
    vsp = 0;

if (candash_counter < 1)
{
    candash_counter = 0;
    b_candash = 1;
}

player_input(playerData);
