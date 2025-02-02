on_ground = !carried && (check_below() || check_below_passthrough());

if (carrying_player != -4 && carrying_player.currentstate == UnknownEnum.Value_3)
    instance_destroy(self);

if (on_ground)
{
    if (carried == 0)
        carrieable = 1;
}
else
{
    vsp += gsp;
    
    if (vsp > maxfall)
        vsp = maxfall;
}

if (thrown == 0)
{
    lethal = 0;
    
    if (hsp != 0)
        hsp = approach(hsp, 0, 0.05);
}

if (carried == 1)
{
    gsp = 0;
    
    if (carrying_player != -4)
    {
        if (carrying_player.key_attack)
        {
            if (carried == 1)
            {
                if (carrying_player.facing == 1)
                    hsp = 2.25;
                
                if (carrying_player.facing == -1)
                    hsp = -2.25;
                
                carried = 0;
                thrown = 1;
                y = carrying_player.y - 10;
                alarm[2] = 5;
                lethal = 1;
                audio_play_sound(snd_punchball_throw, 1, false);
                carrying_player.b_holding = 0;
                carrying_player = -4;
            }
        }
    }
}

if (instance_exists(my_player))
{
    if (my_player.currentstate == UnknownEnum.Value_3)
        instance_destroy(self);
}
