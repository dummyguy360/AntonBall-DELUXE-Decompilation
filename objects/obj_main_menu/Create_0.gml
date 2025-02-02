subMenus = 
{
    mainMenu: argument[0],
    extras: argument[1],
    options: argument[2]
};
menu = subMenus.mainMenu;

on_select = function()
{
    audio_play_sound(snd_select, 1, false);
    alarm[0] = 180;
    
    switch (global.next_room)
    {
        case 96:
        case 97:
        case 95:
            alarm[0] = 1;
            break;
    }
    
    if (alarm[0] > 1)
        instance_create_depth(x, y, -100, obj_level_transition_exit);
};

loadOptions = function()
{
    if (window_get_fullscreen())
        screenScale.currentIndex = array_length(screenScale.options) - 1;
    else
        screenScale.currentIndex = array_find(screenScale.options, string(global.options.screenScale));
    
    retroFilter.currentIndex = array_find(retroFilter.options, string(global.options.retroFilter));
};

if (!audio_is_playing(mus_title))
{
    audio_stop_all();
    audio_play_sound(mus_title, 1, true);
}

screenScale = new option_selector_data("SCREEN SCALE", "1", "2", "3", "4", "FULL");
retroFilter = new option_selector_data("RETRO FILTER", "NONE", "GAME BALL ADVANCE", "ATB-001");
deletionEnabled = 0;
