if (global.blue_pressed == 1)
{
    sprite_index = spr_blueswitch_pressed;
    global.red_pressed = 0;
}

if (global.blue_pressed == 0)
    sprite_index = spr_blueswitch;
