if (obj_menu_input.confirm)
{
    if (selected == 0)
    {
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        alarm[0] = 60;
        audio_sound_gain(music, 1, 0);
        audio_sound_gain(music, 0, 750);
        global.next_room = 96;
        selected = 1;
    }
}
