if (alarm[0] > -1)
    exit;

cmn_menu_update(menu);

if (obj_menu_input.verticalDirection != 0)
    audio_play_sound(snd_clock, 1, false);

cmn_menu_shift_select(menu, obj_menu_input.verticalDirection, 0);

if (menu != subMenus.mainMenu && obj_menu_input.cancel)
{
    save_begin();
    menu = subMenus.mainMenu;
    cmn_menu_set_select(menu, 0);
}
else
{
    cmn_menu_input(menu);
}
