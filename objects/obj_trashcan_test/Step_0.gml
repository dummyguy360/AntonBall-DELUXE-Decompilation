on_ground = !carried && (check_below() || check_below_passthrough());

if (bounce == 2)
{
    hsp = 0;
    lethal = 0;
}

if (place_meeting(x, y + 17, obj_player))
{
    var touching_player = instance_place(x, y + 17, obj_player);
    
    if (carried == 0 && carrieable == 1 && !touching_player.b_holding && touching_player.key_attack)
    {
        bounce = 0;
        carried = 1;
        carrieable = 0;
        audio_play_sound(snd_punchball_pickup, 1, false);
        touching_player.b_holding = 1;
        carrying_player = other;
    }
}

if (carrying_player != -4 && carrying_player.currentstate == UnknownEnum.Value_3)
    instance_destroy(self);

if (on_ground)
{
    if (bounce != 2)
    {
        if (bounce == 0)
        {
            audio_play_sound(snd_punchball_bounce, 1, false);
            vsp = -1;
        }
        else if (bounce == 1)
        {
            audio_play_sound(snd_punchball_bounce, 1, false);
            vsp = 0;
            hsp = 0;
        }
        else if (bounce == 2)
        {
            vsp = 0;
            hsp = 0;
        }
        
        bounce += 1;
    }
    
    if (carried == 0)
        carrieable = 1;
}
else
{
    vsp += gsp;
    
    if (vsp > maxfall)
        vsp = maxfall;
}

if (carried == 0 && !on_ground)
{
    if (hsp != 0)
        hsp = approach(hsp, 0, 0.05);
}

if (carried == 1)
{
    gsp = 0;
    
    if (carrying_player != -4)
    {
        if (carrying_player.attack)
        {
            if (carried == 1)
            {
                if (carrying_player.facing == 1)
                    hsp = 2.25;
                
                if (carrying_player.facing == -1)
                    hsp = -2.25;
                
                y = carrying_player.y - 10;
                alarm[2] = 5;
                lethal = 1;
                audio_play_sound(snd_punchball_throw, 1, false);
                carried = 0;
                carrying_player.b_holding = 0;
                carrying_player = -4;
            }
        }
    }
}
