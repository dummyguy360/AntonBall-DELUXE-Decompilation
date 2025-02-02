if ((image_index == 1 || image_index == 3) && moving)
{
    if (!audio_is_playing(snd_anton_step1) && !audio_is_playing(snd_anton_step2) && !audio_is_playing(snd_anton_step3))
        audio_play_sound(choose(snd_anton_step1, snd_anton_step2, snd_anton_step3), 1, false);
}
