function scr_pause_menu()
{
    if (scr_button("RESUME") && !selected && pause)
        alarm[3] = 1;
    
    if (scr_button("QUIT"))
    {
        if (!selected)
        {
            if (room == rm_sage)
                audio_play_sound(snd_anton_goodbye, 1, false);
            
            audio_play_sound(snd_select, 1, false);
            instance_create_layer(0, 0, "System", obj_title_transition_exit);
            alarm[2] = 120;
            selected = 1;
        }
    }
}
