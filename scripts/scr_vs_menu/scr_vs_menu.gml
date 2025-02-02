function scr_vs_menu()
{
    if (scr_button("LOCAL VS.") && !selected)
    {
        audio_stop_all();
        audio_play_sound(snd_antonball, 1, false);
        audio_play_sound(snd_select, 1, false);
        image_speed = 0;
        alarm[0] = 120;
        selected = 1;
    }
    
    if (scr_button("QUIT"))
        room_goto(rm_title);
}
