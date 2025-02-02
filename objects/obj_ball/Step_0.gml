if (hit > 0)
    hit -= 1;

if (spikecounter <= 0)
{
    spiked = 0;
    spikecounter = 0;
}

if (!instance_exists(obj_balldupe))
    isdupe = 0;

if (global.classic_stage == 1)
{
    mercyTimer += 1;
    var _bossExists = instance_exists(obj_tankboss);
    
    if (_bossExists)
        x = 9999;
    
    if (global.gamestart == 1 && (instance_nearest(x, y, obj_player).key_jump || _bossExists) && !global.go)
    {
        direction = 45;
        global.ballspeed = 2;
        global.go = 1;
        alarm[4] = -1;
        audio_play_sound(snd_launch, 1, false);
    }
    
    if (!global.go && instance_exists(obj_player) && global.classic_stage == 1)
    {
        x = obj_ballspawn.x;
        y = obj_ballspawn.y;
    }
    
    if (!instance_exists(obj_player))
    {
        global.go = 0;
        instance_destroy(self);
    }
    else
    {
        object_set_visible(self, 1);
    }
    
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
        switch (spikecounter)
        {
            case 3:
                speed = 5;
                break;
            
            case 2:
                speed = 2.5;
                break;
            
            case 1:
                speed = 2;
                break;
        }
    }
}

if (global.vs_stage == 1)
{
    if (speed > 6)
        speed = 6;
    
    if (global.go == 1)
    {
        if (!spiked)
            speed = momentum;
    }
    
    if (global.vs_win)
        instance_destroy(self);
}

if (global.adventure_stage == 1)
{
    if (global.go == 1)
    {
        if (!spiked)
            speed = momentum;
    }
    
    if (obj_brickarea.bricksinarea == 0)
        instance_destroy(self);
}

if (ballbuffer > 0)
    ballbuffer -= 1;

if (ballbuffer < 1)
    ballcounter = 0;

event_user(0);
event_user(1);
event_user(4);
doubleCollision = 0;
event_user(3);

if (place_meeting(x, y, obj_barrier))
{
    stuckTimer += 1;
    
    if (stuckTimer >= stuckTime)
    {
        while (place_meeting(x, y, obj_barrier))
        {
            x = approach(x, obj_player.x, 1);
            y = approach(y, obj_player.y, 1);
        }
    }
}
else
{
    stuckTimer = 0;
}
