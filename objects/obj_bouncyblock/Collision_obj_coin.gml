if (sprite_index == spr_bouncyblock_hit || 79 || 82)
{
    with (other)
    {
        if (bouncedFromBelow == 0)
        {
            y -= 4;
            vsp = -3;
            alarm[1] = -1;
            alarm[2] = 15;
            bouncedFromBelow = 1;
        }
    }
}
