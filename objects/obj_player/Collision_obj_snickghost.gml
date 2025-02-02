if (!dashinvuln && currentstate != UnknownEnum.Value_3 && global.go && !b_ishurt && other.hurt == 0)
{
    if (global.classic_stage)
    {
        global.go = 0;
        global.ball_oob = 1;
    }
    
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
