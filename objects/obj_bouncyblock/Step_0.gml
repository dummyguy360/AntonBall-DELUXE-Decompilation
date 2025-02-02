var player = instance_place(x, y + 1, obj_player);

if (instance_place(x, y + 1, obj_player))
{
    if (player.dead == 0 && player.currentstate != UnknownEnum.Value_12)
    {
        sprite_index = spr_bouncyblock_hit;
        
        if (!audio_is_playing(snd_bounce))
            audio_play_sound(snd_bounce, 1, false);
    }
}
