var player = instance_place(x, y, obj_player);

if (spikecounter < 0)
    spikecounter = 0;

if (!spiked)
{
    switch (global.ballspeed)
    {
        case 1:
            ballspeed = 1.3;
            hsp = ballspeed;
            vsp = ballspeed;
            break;
        
        case 2:
            ballspeed = 1.5;
            hsp = ballspeed;
            vsp = ballspeed;
            break;
        
        case 3:
            ballspeed = 2;
            hsp = ballspeed;
            vsp = ballspeed;
            break;
    }
}
else if (spiked == 1)
{
    switch (spikecounter)
    {
        case 3:
            ballspeed = 5;
            hsp = ballspeed;
            vsp = ballspeed;
            break;
        
        case 2:
            ballspeed = 3;
            hsp = ballspeed;
            vsp = ballspeed;
            break;
        
        case 1:
            ballspeed = 2;
            hsp = ballspeed;
            vsp = ballspeed;
            break;
    }
}

if (hit > 0)
    hit -= 1;
else
    hit = 0;

if (instance_place(x, y, obj_player))
{
    if (hit < 1)
    {
        audio_stop_sound(snd_bounce);
        audio_play_sound(snd_bounce, 1, false);
        
        if (player.currentstate == UnknownEnum.Value_4)
        {
            spiked = 1;
            spikecounter = 3;
        }
        
        if (player.up)
        {
            if (collision_rectangle(player.x - 3, player.y - 6, player.x + 3, player.y, player, 0, 1))
            {
                hsp = lengthdir_x(ballspeed, 62.5);
                vsp = lengthdir_y(ballspeed, 62.5);
            }
            
            if (collision_rectangle(player.x - 3, player.y - 7, player.x + 3, player.y - 15, player, 0, 1))
            {
                hsp = lengthdir_x(ballspeed, 40.5);
                vsp = lengthdir_y(ballspeed, 40.5);
            }
        }
        
        if (player.down)
        {
            hsp = lengthdir_x(ballspeed, 315);
            vsp = lengthdir_y(ballspeed, 315);
        }
        else if (!player.up && !player.down)
        {
            if (player.vsp < 0)
            {
                hsp = lengthdir_x(ballspeed, 338.5);
                vsp = lengthdir_y(ballspeed, 338.5);
            }
            else
            {
                hsp = lengthdir_x(ballspeed, 22.5);
                vsp = lengthdir_y(ballspeed, 22.5);
            }
        }
        
        hit = 30;
    }
}
