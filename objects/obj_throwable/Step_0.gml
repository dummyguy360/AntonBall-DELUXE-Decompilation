if (currentstate != 2)
{
    on_ground = !b_thrown && (check_below() || check_below_passthrough());
    
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
    
    var collisionplayer = instance_place(x, y - 1, obj_player);
    
    if (collisionplayer != -4 && !carried && !b_isconsumable)
    {
        player_id = collisionplayer;
        
        if (player_id.currentstate == UnknownEnum.Value_6 && !player_id.b_holding && !place_meeting(x, y, obj_throwable))
        {
            player_id.b_holding = 1;
            carried = 1;
            layer = obj_player.layer;
            alarm[8] = -1;
        }
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
                alarm[0] = 15;
                carried = 0;
                b_thrown = 1;
                player_id.b_holding = 0;
                player_id = -4;
            }
        }
    }
    
    if (place_meeting(x, y, obj_player))
    {
        if (b_isconsumable)
        {
            consumable_method();
            instance_destroy();
            exit;
        }
        
        if (lethal)
        {
            vsp = -1.25;
            hsp /= 2;
            var _playerhsp = sign(hsp) * 2;
            var _player = instance_place(x, y, obj_player);
            _player.deal_damage(_playerhsp);
            audio_play_sound(snd_hit, 1, false);
            currentstate = 2;
        }
    }
    
    if (object_index == obj_trashcan && b_thrown && place_meeting(x + hsp, y, obj_trashcan))
    {
        vsp = -1.25;
        hsp /= 2;
        currentstate = 2;
    }
    
    if (place_meeting(x, y, obj_ballbuster) && lethal)
    {
        vsp = -1.25;
        hsp /= 2;
        currentstate = 2;
    }
    
    if (hsp == 0 && on_ground)
        lethal = 0;
}

if (currentstate == 2)
{
    on_ground = 0;
    vsp += gsp;
    
    if (vsp > maxfall)
        vsp = maxfall;
}
