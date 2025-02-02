if (image_index == 0)
{
    audio_play_sound(snd_trash, 1, false);
    audio_play_sound(snd_car, 1, false);
    audio_play_sound(snd_molehit, 1, false);
    alarm[0] = 120;
    vspeed = 0;
    image_index = 1;
    other.image_index = 1;
}
