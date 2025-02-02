if (place_meeting(x + hspeed, y + vspeed, obj_brickparent))
{
    var inst = instance_place(x + hspeed, y + vspeed, obj_brickparent);
    
    if (!inst.broken)
    {
        var dir = point_direction(0, 0, hspeed, vspeed);
        
        repeat (ceil(abs(speed)))
        {
            if (!place_meeting(x + lengthdir_x(1, dir), y + lengthdir_y(1, dir), obj_brickparent))
            {
                x += lengthdir_x(1, dir);
                y += lengthdir_y(1, dir);
            }
            else
            {
                inst = instance_place(x + lengthdir_x(1, dir), y + lengthdir_y(1, dir), obj_brickparent);
                break;
            }
        }
        
        inst.killingball = id;
        inst.hp = -1;
        
        with (inst)
            event_user(0);
        
        global.ballhits += 1;
        audio_stop_sound(snd_explosion);
        audio_play_sound(snd_explosion, 1000, false);
        instance_destroy(self);
    }
}
