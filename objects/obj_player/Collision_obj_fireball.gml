if (other.lethal)
{
    if (!instance_exists(obj_balldupe))
    {
        global.go = 0;
        global.ball_oob = 1;
    }
    
    audio_stop_sound(snd_flatten);
    audio_play_sound(snd_flatten, 100, false);
    instance_destroy(obj_ball);
}
