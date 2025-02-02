function powerup_multiball()
{
    var _ballCount = instance_number(obj_ball);
    
    if (_ballCount < 3)
    {
        with (instance_create_depth(x, y - 2, 0, obj_balldupe))
            direction = obj_ball.direction / 2;
    }
    
    if (_ballCount < 2)
    {
        with (instance_create_depth(x, y - 2, 0, obj_balldupe))
            direction = -obj_ball.direction;
    }
    
    audio_stop_sound(snd_tripleball);
    audio_play_sound(snd_tripleball, 1000, false);
}

function powerup_slowdown()
{
    global.ballspeed = 1;
    obj_controller.alarm[0] = 900;
    audio_stop_sound(snd_ticking);
    audio_play_sound(snd_ticking, 1000, true);
}

function powerup_gun(argument0)
{
    argument0.b_hasgun = 1;
    argument0.gunammo = 6;
    
    if (argument0.voicetimer == 0)
    {
        if (!audio_is_playing(argument0.voice_yay1) || !audio_is_playing(argument0.voice_yay2))
        {
            argument0.voicetimer = argument0.voicetimermax;
            audio_play_sound(choose(argument0.voice_yay1, argument0.voice_yay2), 1, false);
        }
    }
    
    audio_play_sound(snd_guncock, 1000, false);
}

function powerup_ghost(argument0)
{
    with (argument0)
        ghostpoweruptimer = ghostpowerupduration;
}
