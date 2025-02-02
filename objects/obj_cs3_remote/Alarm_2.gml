if (talk == 0)
{
    talk = 1;
    alarm[2] = 240;
    alarm[0] = 240;
    image_index = 0;
    audio_play_sound(snd_cs3_brulo, 1, true);
}
else if (talk == 1)
{
    talk = 2;
    alarm[2] = 160;
    alarm[4] = 90;
}
else if (talk == 2)
{
    talk = 3;
    alarm[2] = 240;
    image_index = 0;
    audio_sound_set_track_position(snd_cs3_brulo, 13);
    audio_play_sound(snd_cs3_brulo, 1, true);
}
else if (talk == 3)
{
    talk = 4;
    alarm[3] = 45;
}
