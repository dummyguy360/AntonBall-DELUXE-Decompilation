function options_menu()
{
    if (option_selector(screenScale.getFullLabel()))
    {
        screenScale.increment(global.g_cmn_menu_result);
        
        if (screenScale.getCurrentOption() == "FULL")
        {
            window_set_fullscreen(true);
            global.options.screenScale = -1;
        }
        else
        {
            window_set_fullscreen(false);
            global.options.screenScale = real(screenScale.getCurrentOption());
            window_set_size(256 * global.options.screenScale, 144 * global.options.screenScale);
            surface_resize(application_surface, 256, 144);
            alarm[1] = 6;
        }
    }
    
    if (option_selector(retroFilter.getFullLabel()))
    {
        retroFilter.increment(global.g_cmn_menu_result);
        global.options.retroFilter = retroFilter.getCurrentOption();
    }
    
    if (scr_button("SCREEN SHAKE: " + (global.options.screenShake ? "ON" : "OFF")))
        global.options.screenShake = !global.options.screenShake;
    
    if (scr_button("BALL TRAILS: " + (global.options.ballTrails ? "ON" : "OFF")))
        global.options.ballTrails = !global.options.ballTrails;
    
    if (scr_button(deletionEnabled ? "ARE YOU SURE!? PRESS AGAIN TO CONFIRM" : "DELETE SAVE DATA"))
    {
        if (deletionEnabled)
        {
            audio_play_sound(snd_anton_goodbye, 1, false);
            initialize_serialized_values();
            save_begin();
            loadOptions();
        }
        
        deletionEnabled = !deletionEnabled;
    }
}
