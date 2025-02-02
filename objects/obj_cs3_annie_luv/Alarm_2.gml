if (talk == 0)
{
    talk += 1;
    alarm[2] = 240;
}
else if (talk == 1)
{
    talk += 1;
    audio_sound_gain(snd_cs3_brulo, 0, 0.5);
    alarm[3] = 1;
}
