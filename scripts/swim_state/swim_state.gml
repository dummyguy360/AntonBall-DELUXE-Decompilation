function swim_state()
{
    if ((global.vs_stage == 1 && (!object_exists(obj_ball) || (object_exists(obj_ball) && global.go == 1))) || (global.classic_stage == 1 && (!object_exists(obj_ball) || (object_exists(obj_ball) && global.go == 1))) || global.adventure_stage == 1)
    {
        s_hsp = 0;
        dash = 0;
        gsp = 0.1;
        
        if (left)
            hsp = approach(hsp, -s_msp, s_asp);
        else if (right)
            hsp = approach(hsp, s_msp, s_asp);
        else if (!left && !right)
            hsp = approach(hsp, 0, s_dsp);
        
        if (left && right && !b_on_ground)
        {
            if (hsp > 0)
                hsp = approach(s_hsp, s_dsp, 0);
            else
                hsp = approach(hsp, 0, s_dsp);
        }
        
        if (left && right && b_on_ground)
            hsp = 0;
        
        if (b_on_ground)
        {
            asp = groundasp;
            dsp = grounddsp;
            msp = groundmsp;
        }
        else if (!b_on_ground && b_backflipped)
        {
            asp = bfasp;
            dsp = bfdsp;
            msp = bfmsp;
        }
        
        if (!b_on_ground && !b_backflipped)
        {
            if (vsp < 0 && !key_jump_held)
                vsp *= 0.5;
        }
        
        if (key_jump)
            buffer_counter = buffer_max;
        
        if (buffer_counter > 0)
        {
            buffer_counter -= 1;
            
            if (b_on_ground || coyote_counter > 0)
            {
                buffer_counter = 0;
                coyote_counter = 0;
                vsp = jpower;
                jumped = 1;
                audio_stop_sound(jumpsound);
                audio_play_sound(jumpsound, 100, false);
            }
        }
        
        if (b_on_ground == 0)
        {
            if (coyote_counter > 0)
                coyote_counter -= 1;
        }
        
        move_wrap(1, 1, sprite_width);
        
        if (down && b_on_ground && !b_holding && (hsp <= 1.5 && hsp >= -1.5))
            currentstate = UnknownEnum.Value_1;
        
        if (check_below_throwable() && key_attack && !b_holding)
        {
            b_ispickingup = 1;
            var colliding_throwable_id = instance_place(x, y + 1, obj_throwable);
            x = colliding_throwable_id.x;
            audio_play_sound(snd_grab, 1, false);
            hsp = 0;
            currentstate = UnknownEnum.Value_6;
            alarm[4] = 15;
        }
        
        if (((up && instance_place(x, y - 1, obj_ladder)) || (down && position_meeting(x, y + 1, obj_ladder))) && b_on_ground && !b_holding)
        {
            var colliding_ladder_id = instance_place(x, y + 1, obj_ladder);
            
            if (colliding_ladder_id.activated == 1)
            {
                x = colliding_ladder_id.x + 4;
                hsp = 0;
                currentstate = UnknownEnum.Value_5;
            }
        }
        
        if (dashtimer > -1 && (left || right) && attack && b_candash && !b_holding)
        {
            if (left)
                dash = 3;
            
            if (right)
                dash = 2;
            
            if (left && b_backflipped)
                dash = 1;
            
            if (right && b_backflipped)
                dash = 0;
            
            if (b_on_ground)
                dashtimer = 5;
            else
                dashtimer = 2;
            
            audio_play_sound(snd_dash, 1, false);
            alarm[2] = 2;
            b_candash = 0;
            b_touched_ground = 0;
            candash_counter = candash_max;
            currentstate = UnknownEnum.Value_4;
        }
    }
    
    if (b_hasgun == 1 && key_attack)
    {
        if (guntimer == 0)
        {
            guntimer = guntimermax;
            audio_stop_sound(snd_GUN);
            audio_play_sound(snd_GUN, 1, false);
            
            if (facing == 1)
            {
                var shootgun = instance_create_depth(x + 11, choose(y - 11, y - 10, y - 12), 0, obj_bullet);
                
                with (shootgun)
                {
                    facing = 1;
                    hspeed = 6;
                }
            }
            
            if (facing == -1)
            {
                var shootgun = instance_create_depth(x - 11, choose(y - 11, y - 10, y - 12), 0, obj_bullet);
                
                with (shootgun)
                {
                    facing = -1;
                    hspeed = -6;
                }
            }
        }
    }
}
