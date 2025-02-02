if (alarm[0] > -1)
    exit;

cmn_menu_update(menu);

if (obj_menu_input.verticalDirection != 0)
    audio_play_sound(snd_clock, 1, false);

cmn_menu_shift_select(menu, obj_menu_input.verticalDirection, 0);
cmn_menu_input(menu);
targetY = (room_height / 2) - cmn_menu_get_height_until(menu, cmn_menu_get_select(menu));
drawY = lerp(drawY, targetY, 0.12);
bottomScrollTime += 1;

if (obj_menu_input.cancelHeld)
    backCharge += 1;
else
    backCharge = 0;

if (backCharge >= backTime)
    room_goto(rm_title);
