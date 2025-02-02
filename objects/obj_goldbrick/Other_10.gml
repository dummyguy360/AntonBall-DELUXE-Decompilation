if (!broken && hp == 2)
{
    sprite_index = spr_goldbrick_hit;
    audio_stop_sound(snd_goldbrick);
    audio_play_sound(snd_goldbrick, 1, false);
}

event_inherited();
