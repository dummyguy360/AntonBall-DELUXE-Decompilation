cmn_menu_update(menu);

if (obj_menu_input.verticalDirection != 0)
    audio_play_sound(snd_clock, 1, false);

cmn_menu_shift_select(menu, obj_menu_input.verticalDirection, 0);
cmn_menu_input(menu);
