if (alarm[0] > -1 || alarm[1] > -1 || instance_exists(obj_unlockDisplay) || instance_exists(obj_gamemode_info_parent))
    alarm[2] = 2;

if (alarm[2] > -1)
    exit;

cmn_menu_update(menu);

if (!selected)
{
    cmn_menu_shift_select(menu, obj_menu_input.verticalDirection, 0);
    cmn_menu_input(menu);
    
    if (obj_menu_input.verticalDirection != 0)
        audio_play_sound(snd_clock, 1, false);
    
    if (!selected && obj_menu_input.cancel)
        room_goto(rm_title);
}
