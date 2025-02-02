function gamemode_menu()
{
    if (scr_button("START GAME") && !selected)
    {
        audio_stop_all();
        audio_play_sound(snd_antonball, 1, false);
        audio_play_sound(snd_select, 1, false);
        image_speed = 0;
        
        if (room == rm_menu_punchball)
            instance_create_depth(0, 0, -1000, obj_title_transition_exit_b);
        else
            instance_create_depth(0, 0, -1000, obj_title_transition_exit);
        
        alarm[1] = 120;
        selected = 1;
        global.snickschallenge = 0;
    }
    
    if (room != rm_menu_vs && scr_button("LEADERBOARDS"))
        instance_create_depth(0, 0, depth - 1, obj_leaderboard_menu);
    
    if (scr_button("INSTRUCTIONS"))
        instance_create_depth(0, 0, depth - 1, obj_instructions_menu);
}
