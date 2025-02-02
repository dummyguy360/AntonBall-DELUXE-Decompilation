if (currentstate != 2)
{
    on_ground = check_below() || check_below_passthrough();
    
    if (!on_ground)
    {
        vsp += gsp;
        b_touchedground = 0;
        
        if (vsp > maxfall)
            vsp = maxfall;
    }
    
    if (on_ground && !carried)
    {
        b_thrown = 0;
        
        if (b_touchedground == 0)
            b_touchedground = 1;
        
        if (vsp > 0)
        {
        }
        
        if (hsp != 0)
            hsp = approach(hsp, 0, 0.15);
    }
    
    if (instance_place(x, y - 1, obj_player) && !carried)
    {
        player_id = instance_place(x, y - 1, obj_player);
        
        if (player_id.currentstate == UnknownEnum.Value_6 && !player_id.b_holding && !place_meeting(x, y, obj_throwable))
        {
            alarm[8] = -1;
            carried = 1;
        }
    }
    
    if (carried && place_meeting(x, y, obj_throwable))
    {
        carried = 0;
        player_id.b_holding = 0;
    }
    
    if (player_id != -4)
    {
        if (player_id.key_attack && player_id.currentstate != UnknownEnum.Value_6)
        {
            if (carried == 1)
            {
                if (player_id.facing == 1)
                {
                    if (player_id.up)
                        vsp = -1.25;
                    else if (!instance_place(x, y, obj_block))
                        hsp = 2.25;
                }
                
                if (player_id.facing == -1)
                {
                    if (player_id.up)
                        vsp = -1.25;
                    else if (!instance_place(x, y, obj_block))
                        hsp = -2.25;
                }
                
                audio_play_sound(snd_punchball_throw, 1, false);
                alarm[0] = 10;
                alarm[1] = 30;
                carried = 0;
                b_thrown = 1;
                player_id.b_holding = 0;
                player_id = -4;
            }
        }
    }
    
    if (lethal && (instance_place(x, y, obj_block) || instance_place(x, y, obj_player)))
        instance_change(obj_bumper, true);
}

if (currentstate == 2)
{
    on_ground = 0;
    vsp += gsp;
    
    if (vsp > maxfall)
        vsp = maxfall;
}
