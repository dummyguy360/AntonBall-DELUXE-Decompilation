xpos = x;
ypos = y;
xcounter += hspeed;
ycounter += vspeed;
var h = floor(xcounter);
var v = floor(ycounter);
xcounter -= h;
ycounter -= v;

if (instance_exists(obj_player) && global.classic_stage)
{
    x = room_width / 2;
    y = room_height / 2;
}

if (instance_exists(obj_player) && global.adventure_stage)
{
    if (!b_zoomreset)
    {
        if (distance_to_point(x, obj_player.ypos) > 32)
            move_towards_point(x, obj_player.ypos, 5);
        else if (distance_to_point(x, obj_player.ypos) <= 32)
            vspeed = 0;
        
        x = obj_player.x;
    }
    
    if (b_zoomreset)
    {
        if (distance_to_point(obj_player.x, obj_player.y) >= 0 && distance_to_point(obj_player.x, obj_player.y) < 4)
        {
            hspeed = 0;
            vspeed = 0;
            b_zoomreset = 0;
        }
        else
        {
            move_towards_point(obj_player.x, obj_player.y, 2);
        }
    }
    
    if (obj_player.select && !b_zoomreset && !instance_place(x, y, obj_player))
    {
        audio_stop_sound(snd_camera);
        audio_play_sound(snd_camera, 1, false);
        b_zoomreset = 1;
    }
}
