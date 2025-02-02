image_index = 0;

if (remote == 0)
{
    remote = 1;
    audio_play_sound(mus_vinyl_lukewarmcoffee, 1, false);
    alarm[0] = 30;
}
else if (remote == 1)
{
    remote = 2;
    alarm[0] = 60;
    audio_play_sound(mus_vinyl_greensocks, 1, false);
}
else if (remote == 2)
{
    remote = 3;
    alarm[2] = 15;
}
else if (remote == 3)
{
    remote = 4;
    alarm[0] = 150;
    audio_play_sound(mus_vinyl_doyou, 1, false);
}
