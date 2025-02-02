if (talk == 0)
{
    talk += 1;
    alarm[2] = 180;
}
else if (talk == 1)
{
    talk += 1;
    alarm[2] = 15;
}
else if (talk == 2)
{
    talk += 1;
    audio_play_sound(snd_annie_yay1, 1, false);
    alarm[2] = 180;
}
else if (talk == 3)
{
    talk = 0;
    instance_create_depth(0, 0, -1000, obj_title_transition_exit_b);
    alarm[3] = 240;
    alarm[4] = 15;
}
