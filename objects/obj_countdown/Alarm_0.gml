if (image_index == 4)
{
    audio_play_sound(snd_countdown2, 1, false);
    image_index += 1;
    alarm[2] = 30;
    global.go = 1;
}
else
{
    image_index += 1;
    alarm[0] = 60;
    audio_play_sound(snd_countdown, 1, false);
}
