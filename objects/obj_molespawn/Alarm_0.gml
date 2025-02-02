if (!global.win)
{
    audio_play_sound(snd_enemyspawn, 1, false);
    
    with (instance_create_layer(x, y, layer, obj_ballbuster))
        image_xscale = -1;
    
    alarm[0] = 600;
}
