function lottery_background_begin()
{
    pal_swap_set(232, floor(loop(0, sprite_get_width(pal_lottery) - 0.01, 5)), 0);
}

function lottery_background_end()
{
    pal_swap_reset();
}
