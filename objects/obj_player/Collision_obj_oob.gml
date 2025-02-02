if (currentstate != UnknownEnum.Value_3 && global.go)
{
    if (global.classic_stage)
    {
        with (obj_ball)
            event_perform(ev_collision, obj_oob);
    }
    else
    {
        currentstate = UnknownEnum.Value_3;
        
        if (!dead)
        {
            alarm_set(6, 60);
            deadfloat = 1;
            dead = 1;
        }
        
        audio_stop_sound(snd_flatten);
        audio_play_sound(snd_flatten, 100, false);
        instance_destroy(obj_ball);
    }
}
