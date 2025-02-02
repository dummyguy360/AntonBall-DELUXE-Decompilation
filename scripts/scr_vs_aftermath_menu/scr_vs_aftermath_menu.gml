function scr_vs_aftermath_menu()
{
    if (scr_button("CHARACTER SELECT") && !selected)
    {
        audio_play_sound(snd_select, 1, false);
        instance_create_depth(0, 0, -1000, obj_title_transition_exit);
        alarm[3] = 120;
        selected = 1;
    }
    
    if (scr_button("LEVEL SELECT") && !selected)
    {
        audio_play_sound(snd_select, 1, false);
        instance_create_depth(0, 0, -1000, obj_title_transition_exit);
        alarm[1] = 120;
        selected = 1;
    }
    
    if (scr_button("QUIT"))
    {
        audio_play_sound(snd_select, 1, false);
        quit();
    }
}
