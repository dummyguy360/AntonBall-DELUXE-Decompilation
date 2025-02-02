function normal_state()
{
    dash = 0;
    
    if (!b_underwater)
    {
        gsp = 0.25;
        maxfall = 5;
    }
    
    if (b_underwater)
    {
        gsp = 0.05;
        maxfall = 1;
    }
    
    if (left)
    {
        if (facing == 1 && hsp > 0.65 && b_on_ground)
        {
            if (!b_turning)
            {
                b_turning = 1;
                alarm[3] = 15;
                audio_play_sound(snd_skid, 1, false);
            }
            
            hsp = approach(0.5, 0, 0.1);
        }
        else if (b_turning == 0)
        {
            hsp = approach(hsp, -msp, asp);
        }
    }
    else if (right)
    {
        if (facing == -1 && hsp < -0.65 && b_on_ground)
        {
            if (!b_turning)
            {
                b_turning = 1;
                alarm[3] = 15;
                audio_play_sound(snd_skid, 1, false);
            }
            
            hsp = approach(-0.5, 0, 0.1);
        }
        else if (b_turning == 0)
        {
            hsp = approach(hsp, msp, asp);
        }
    }
    else if (!b_turning)
    {
        hsp = approach(hsp, 0, dsp);
    }
    
    if (left && right && !b_on_ground)
    {
        if (hsp > 0)
            hsp = approach(hsp, dsp, 0);
        else
            hsp = approach(hsp, 0, dsp);
    }
    
    if (left && right && b_on_ground)
        hsp = 0;
    
    if (b_underwater)
    {
        asp = s_asp;
        dsp = s_dsp;
        msp = b_on_ground ? 0.5 : s_msp;
    }
    else if (b_backflipped)
    {
        asp = bfasp;
        dsp = bfdsp;
        msp = bfmsp;
    }
    else if (b_on_ground)
    {
        msp = groundmsp;
        var _frictionSurface = instance_place(x, y + 1, obj_friction_parent);
        
        if (_frictionSurface == -4)
        {
            asp = groundasp;
            dsp = grounddsp;
        }
        else
        {
            asp = _frictionSurface.acceleration;
            dsp = _frictionSurface.deceleration;
        }
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
        
        if (b_on_ground || coyote_counter > 0 || b_underwater)
        {
            buffer_counter = 0;
            coyote_counter = 0;
            
            if (!b_underwater)
                vsp = jpower;
            else if (b_underwater)
                vsp = -1.5;
            
            b_jumped = 1;
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
    
    if (down && b_on_ground && !b_holding && !b_underwater && (hsp <= 1.5 && hsp >= -1.5))
        currentstate = UnknownEnum.Value_1;
    
    if (check_below_throwable() && key_attack && !b_holding && !b_underwater)
    {
        b_ispickingup = 1;
        var colliding_throwable_id = instance_place(x, y + 1, obj_throwable);
        x = colliding_throwable_id.x;
        audio_play_sound(snd_punchball_pickup, 1, false);
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
    
    if (dashtimer > -1 && (left || right) && attack && b_candash && !b_holding && !b_underwater)
    {
        if (left)
        {
            hsp = -3;
            dash = 3;
        }
        
        if (right)
        {
            hsp = 3;
            dash = 2;
        }
        
        if (left && b_backflipped)
            dash = 1;
        
        if (right && b_backflipped)
            dash = 0;
        
        if (b_on_ground)
            dashtimer = 10;
        else
            dashtimer = 2;
        
        audio_play_sound(snd_dash, 1, false);
        alarm[2] = 2;
        b_candash = 0;
        touched_ground = 0;
        candash_counter = candash_max;
        dashinvuln = 1;
        dashinvuln_timer = dashinvuln_max;
        currentstate = UnknownEnum.Value_4;
    }
    
    if (b_hasgun == 1 && key_attack)
    {
        if (guntimer == 0)
        {
            guntimer = guntimermax;
            audio_stop_sound(snd_GUN);
            audio_play_sound(snd_GUN, 1, false);
            gunammo += -1;
            obj_controller.shake = 1;
            obj_controller.shakeDur = 5;
            obj_controller.shakeForce = 5;
            
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
