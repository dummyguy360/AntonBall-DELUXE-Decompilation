var inst = instance_place(x + hspeed, y + vspeed, obj_player_collision_parent);

if (inst != -4)
{
    var dir = point_direction(0, 0, hspeed, vspeed);
    
    repeat (ceil(abs(speed)))
    {
        if (!place_meeting(x + lengthdir_x(1, dir), y + lengthdir_y(1, dir), obj_player_collision_parent))
        {
            x += lengthdir_x(1, dir);
            y += lengthdir_y(1, dir);
        }
        else
        {
            break;
        }
    }
    
    x += lengthdir_x(1, dir);
    y += lengthdir_y(1, dir);
    
    switch (inst.object_index)
    {
        case obj_player_ghost:
            lastplayer = inst.creator;
            break;
        
        default:
            lastplayer = inst;
            break;
    }
    
    if (instance_place(x, y, obj_ball_direction_changer))
        var bdc = instance_place(x, y, obj_ball_direction_changer);
    else
        var bdc = -4;
    
    if (hit < 1)
    {
        hit = 30;
        global.combo = 0;
        audio_stop_sound(snd_bounce);
        audio_play_sound(snd_bounce, 1000, false);
        var centre_y = (bbox_top + bbox_bottom) / 2;
        var player_centre_y = (inst.bbox_top + inst.bbox_bottom) / 2;
        
        if (inst.up)
        {
            if (inst.team == 1)
                direction = 135;
            else
                direction = 45;
        }
        else if (inst.down)
        {
            if (inst.team == 1)
                direction = 225;
            else if (inst.team == 0)
                direction = 315;
        }
        else if (inst.team == 1)
        {
            direction = 180;
        }
        else if (inst.team == 0)
        {
            direction = 0;
        }
        
        var diff = 10;
        
        if (direction == 0)
            diff = 22.5;
        
        direction += ((centre_y < player_centre_y) ? diff : -diff);
        direction = (direction + 360) % 360;
        
        if (firsthit == 0 && global.vs_stage == 1)
        {
            if (inst.hsp < 0)
                hspeed *= -1;
            
            firsthit = 1;
        }
        
        if (inst.bumper_r)
            hspeed = abs(hspeed);
        else if (inst.bumper_l)
            hspeed = -abs(hspeed);
        
        global.ballhits += 1;
    }
    
    if (global.classic_stage)
    {
        if (speed == 0)
            speed = 1.5;
        
        if (inst.currentstate == UnknownEnum.Value_4 && spikecounter != 3)
        {
            spiked = 1;
            spikecounter = 3;
            audio_play_sound(snd_spike, 1, false);
            inst.hsp = 0;
            inst.currentstate = UnknownEnum.Value_0;
            obj_controller.shake = 1;
            obj_controller.shakeDur = 3;
            obj_controller.shakeForce = 3;
        }
        else
        {
            obj_controller.shake = 1;
            obj_controller.shakeDur = 3;
            obj_controller.shakeForce = 2;
        }
        
        obj_controller.playerBallHits += 1;
    }
    
    if (global.vs_stage)
    {
        if (global.launched == 0)
        {
            momentum = 1.5;
            global.launched = 1;
        }
        
        if (inst.currentstate == UnknownEnum.Value_4)
        {
            momentum += 1;
            obj_controller.shake = 1;
            obj_controller.shakeDur = 3;
            obj_controller.shakeForce = 3;
            audio_play_sound(snd_spike, 1, false);
            inst.currentstate = UnknownEnum.Value_0;
        }
        else
        {
            obj_controller.shake = 1;
            obj_controller.shakeDur = 3;
            obj_controller.shakeForce = 2;
            momentum += 0.1;
        }
    }
    
    with (inst)
        event_user(0);
}
