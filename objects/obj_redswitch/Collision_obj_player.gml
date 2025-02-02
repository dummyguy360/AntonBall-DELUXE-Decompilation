if (other.vsp > 0 && global.red_pressed == 0)
{
    global.red_pressed = 1;
    global.blue_pressed = 0;
    audio_play_sound(snd_switch2, 1, false);
}
