if (global.coincount > 0)
{
    instance_create_layer(choose(92, 134, 52), 31, "Player", obj_coin);
    audio_play_sound(snd_fall, 1, false);
    global.coincount -= 1;
    alarm[6] = choose(600, 900, 1200, 1500);
}
