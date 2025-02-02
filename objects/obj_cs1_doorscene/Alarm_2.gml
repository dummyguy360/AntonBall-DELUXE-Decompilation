if (talk == 0)
{
    talk += 1;
    audio_sound_gain(snd_anton_goodbye, 0.5, 0);
    alarm[2] = 240;
}
else if (talk == 1)
{
    talk += 1;
    alarm[2] = 15;
}
else if (talk == 2)
{
    talk += 1;
    audio_sound_gain(snd_anton_yay2, 0.5, 0);
    audio_play_sound(snd_anton_yay2, 1, false);
    alarm[2] = 240;
}
else if (talk == 3)
{
    talk = 0;
    alarm[3] = 30;
    audio_sound_gain(snd_anton_goodbye, 1, 0);
    audio_sound_gain(snd_anton_yay2, 1, 0);
}
