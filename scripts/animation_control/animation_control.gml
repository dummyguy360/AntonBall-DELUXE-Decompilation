function animation_control()
{
    xscale = approach(xscale, 1, 0.03);
    yscale = approach(yscale, 1, 0.03);
    round(frame);
    
    if (ancillarystate == 0)
    {
        anim_idle = anim_idle_base;
        anim_run = anim_run_base;
        anim_jump = anim_jump_base;
        anim_crouch = anim_crouch_base;
        anim_attack = anim_attack_base;
        anim_backflip = anim_backflip_base;
        anim_die = anim_die_base;
        anim_clutch = anim_clutch_base;
        anim_climb = anim_climb_base;
        anim_climb_d = anim_climb_d_base;
        anim_climb_mount = anim_climb_mount_base;
        anim_turn = anim_turn_base;
        anim_win = anim_win_base;
        anim_lose = anim_lose_base;
    }
    
    if (ancillarystate == 1)
    {
        anim_idle = anim_idle_gun;
        anim_run = anim_run_gun;
        anim_jump = anim_jump_gun;
        anim_crouch = anim_crouch_gun;
        anim_attack = anim_attack_gun;
        anim_backflip = anim_backflip_gun;
        anim_die = anim_die_gun;
        anim_clutch = anim_clutch_gun;
        anim_climb = anim_climb_gun;
        anim_climb_d = anim_climb_d_gun;
        anim_climb_mount = anim_climb_mount_gun;
        anim_turn = anim_turn_gun;
        anim_win = anim_win_gun;
        anim_lose = anim_lose_gun;
    }
    
    if (ancillarystate == 2)
    {
        anim_idle = anim_idle_carry;
        anim_run = anim_run_carry;
        anim_jump = anim_jump_carry;
        anim_turn = anim_turn_carry;
    }
    
    if (!b_turning)
    {
        if (bumper_l)
            facing = -1;
        
        if (bumper_r)
            facing = 1;
    }
    
    switch (currentstate)
    {
        case UnknownEnum.Value_0:
            if ((b_on_ground == 1 || b_underwater) && !(bumper_l || bumper_r) && !b_turning)
            {
                if (right)
                    facing = 1;
                else if (left)
                    facing = -1;
            }
            
            if ((left || right) && b_on_ground && !(left && right))
            {
                if (b_turning)
                {
                    sprite = anim_turn;
                }
                else
                {
                    sprite = anim_run;
                    framespeed = 0.5;
                    
                    if (frame == 2)
                        audio_play_sound(choose(step1, step2, step3), 1000, false);
                }
            }
            else
            {
                if (b_on_ground)
                {
                    sprite = anim_idle;
                    framespeed = 0;
                }
                
                if (!b_on_ground && !b_backflipped)
                    sprite = anim_jump;
                
                if (!b_on_ground && b_backflipped)
                {
                    sprite = anim_backflip;
                    
                    if (frame < 6)
                    {
                        framespeed = 0.3;
                    }
                    else
                    {
                        frame = 6;
                        framespeed = 0;
                    }
                }
            }
            
            break;
        
        case UnknownEnum.Value_1:
            sprite = anim_crouch;
            break;
        
        case UnknownEnum.Value_2:
            sprite = anim_attack;
            framespeed = 0.1;
            break;
        
        case UnknownEnum.Value_3:
            sprite = anim_die;
            break;
        
        case UnknownEnum.Value_4:
            sprite = anim_clutch;
            break;
        
        case UnknownEnum.Value_7:
            sprite = anim_die;
            break;
        
        case UnknownEnum.Value_8:
            sprite = anim_win;
            break;
        
        case UnknownEnum.Value_9:
            sprite = anim_lose;
            break;
        
        case UnknownEnum.Value_5:
            if (position_meeting(x, y - 6, obj_ladder))
            {
                if (up)
                {
                    sprite = anim_climb;
                    framespeed = 0.2;
                }
                else if (down)
                {
                    sprite = anim_climb_d;
                    framespeed = 0.2;
                }
                
                if (!up && !down)
                    framespeed = 0;
                
                if ((up || down) && (frame == 3 || frame == 1))
                    audio_play_sound(snd_climb, 1000, false);
            }
            else if (position_meeting(x, y - 2, obj_ladder))
            {
                sprite = anim_climb_mount;
                frame = 0;
                framespeed = 0;
            }
            else if (position_meeting(x, y, obj_ladder))
            {
                sprite = anim_climb_mount;
                frame = 1;
                framespeed = 0;
            }
            
            break;
        
        case UnknownEnum.Value_10:
            sprite = anim_idle;
            break;
        
        case UnknownEnum.Value_11:
            sprite = anim_playing;
            break;
        
        case UnknownEnum.Value_12:
            sprite = anim_win;
            
            if (instance_exists(obj_mercy_bomb) && obj_mercy_bomb.exploded)
                sprite = anim_lose;
            
            break;
    }
    
    if (lastsprite != sprite)
    {
        lastsprite = sprite;
        frame = 0;
    }
}
