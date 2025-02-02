if (gamestart == 0)
{
    gamestart = 1;
    audio_play_sound(snd_antonball, 0, false);
    audio_stop_sound(mus_intro);
    alarm[0] = 90;
}
