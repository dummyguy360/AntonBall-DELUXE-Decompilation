if (alarm[0] > -1)
    exit;

if (startup)
{
    scale += (1 / startupDuration);
    var _roundScale = floor(scale * 240) / 240;
    image_xscale = _roundScale;
    image_yscale = _roundScale;
    blendVal += (255 / startupDuration);
    image_blend = make_color_hsv(0, 0, blendVal);
    
    if (image_xscale >= 1 || obj_menu_input.confirm)
    {
        startup = 0;
        image_xscale = 1;
        image_yscale = 1;
        image_blend = c_white;
        instance_create_depth(0, 0, 0, obj_flashpot);
        layer_set_visible("Arcade", 0);
        
        if (obj_menu_input.confirm)
            audio_sound_set_track_position(titleMusic, startupDuration / 60);
    }
}
else if (obj_menu_input.confirm)
{
    audio_stop_all();
    audio_play_sound(snd_titlechant, 0, false);
    audio_play_sound(snd_select, 0, false);
    instance_create_layer(0, 0, "Transition", obj_title_transition_exit);
    alarm[0] = 120;
}
