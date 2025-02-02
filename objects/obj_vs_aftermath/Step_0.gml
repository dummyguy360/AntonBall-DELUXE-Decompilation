cmn_menu_update(menu);

if (menuActive && !selected)
{
    if (global.dp_flow_is_active)
    {
        quit();
        exit;
    }
    
    cmn_menu_shift_select(menu, obj_menu_input.verticalDirection, 0);
    cmn_menu_input(menu);
    
    if (obj_menu_input.verticalDirection != 0)
        audio_play_sound(snd_clock, 1, false);
}

if (drawOffset > 0)
{
    drawOffset -= 2;
}
else
{
    drawOffset = 0;
    
    if (obj_menu_input.confirm)
        menuActive = 1;
}
