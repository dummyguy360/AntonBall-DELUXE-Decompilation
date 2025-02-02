if (face == 0)
{
    image_speed = 1;
    image_index = 0;
    face = 1;
}
else if (face == 1)
{
    image_speed = 1;
    face = 2;
}
else if (face == 2)
{
    image_speed = 1;
    face = 3;
    audio_play_sound(snd_anton_yay2, 1, false);
    alarm[3] = 90;
    alarm[1] = 150;
}
