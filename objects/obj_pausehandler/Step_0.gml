if (pause)
{
    cmn_menu_update(menu);
    
    if (selected == 0)
    {
        player_input(myPlayerData);
        cmn_menu_shift_select(menu, down_pressed - up_pressed, 0);
        cmn_menu_input(menu);
        
        if (down_pressed || up_pressed)
            audio_play_sound(snd_clock, 1, false);
    }
}
else
{
    for (var i = 0; i < ds_list_size(global.activePlayers); i++)
    {
        player_input(ds_list_find_value(global.activePlayers, i));
        
        if (start && !global.win)
        {
            with (all)
            {
                switch (object_index)
                {
                    case obj_menu_input:
                    case obj_pausehandler:
                    case obj_screen_scaler:
                    case obj_netcode:
                    case obj_timeManager:
                    case obj_saveManager:
                        break;
                    
                    default:
                        instance_deactivate_object(self);
                }
            }
            
            audio_pause_all();
            audio_stop_sound(snd_pause);
            audio_play_sound(snd_pause, 1, false);
            pause = 1;
            myPlayerData = ds_list_find_value(global.activePlayers, i);
        }
    }
}
