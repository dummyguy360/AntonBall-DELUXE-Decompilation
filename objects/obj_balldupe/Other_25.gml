if (hit > 0)
    hit -= 1;

if (!instance_exists(obj_player))
{
    object_set_visible(self, 0);
    global.go = 0;
    speed = 0;
    instance_destroy(self);
}

if (currentstate == 0)
    sprite_index = spr_ball;
else if (currentstate == 2)
    sprite_index = spr_largeball;
else
    object_set_visible(self, 1);

if (global.classic_stage == 1)
{
    if (hspeed == 0)
        hspeed = 0.2;
    
    if (direction == 180)
        direction = choose(195, 165, 190, 170);
    
    if (!instance_exists(obj_ball))
        instance_change(obj_ball, true);
    
    if (!spiked)
    {
        if (global.ballspeed == 1)
            speed = 1.3;
        
        if (global.ballspeed == 2)
            speed = 1.5;
        
        if (global.ballspeed == 3)
            speed = 2;
    }
    else if (spiked == 1)
    {
        speed = 5;
    }
}

if (global.vs_stage == 1)
{
    if (global.go == 1)
    {
        if (hspeed == 0)
            hspeed = 0.2;
        
        if (!spiked)
            speed = momentum;
    }
}

event_user(0);
event_user(1);
