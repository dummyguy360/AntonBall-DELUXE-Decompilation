if (other.vsp > 0 && global.blue_pressed == 0)
{
    global.blue_pressed = 1;
    audio_play_sound(snd_switch1, 1, false);
}
