if (!audio_is_playing(mus_characterselect))
    audio_play_sound(mus_characterselect, 100, true);

if (global.next_room != 56)
{
    instance_create_layer(0, 0, "Transition", obj_cs_transition);
}
else
{
    with (instance_create_layer(0, 0, "Transition", obj_cs_transition))
        sprite = spr_pinhole3;
}
