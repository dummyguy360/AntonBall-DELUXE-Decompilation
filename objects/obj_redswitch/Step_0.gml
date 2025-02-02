if (global.red_pressed == 1)
{
    sprite_index = spr_redswitch_pressed;
    global.blue_pressed = 0;
}

if (global.red_pressed == 0)
    sprite_index = spr_redswitch;
