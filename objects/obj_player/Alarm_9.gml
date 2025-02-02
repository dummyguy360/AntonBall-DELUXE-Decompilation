if (team == 0)
{
    audio_stop_sound(snd_yeah);
    audio_play_sound(snd_yeah, 1, false);
    alarm_set(9, -1);
    
    if (room != rm_l6)
        alarm_set(10, 100);
    else
        alarm_set(10, 60);
}
