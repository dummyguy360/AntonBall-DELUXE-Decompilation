if (moving)
{
    audio_stop_sound(mus_cs1);
    audio_sound_gain(mus_city, 1, 0);
    moving = 0;
    alarm[1] = 60;
    image_speed = 0;
    image_index = 1;
}
