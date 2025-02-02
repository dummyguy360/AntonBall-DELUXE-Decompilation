if (carrying_player != -4)
{
    if (carried == 1)
    {
        if (carrying_player.facing == 1)
        {
            x = carrying_player.x;
            y = carrying_player.y - 15;
        }
        
        if (carrying_player.facing == -1)
        {
            x = carrying_player.x;
            y = carrying_player.y - 15;
        }
        
        hsp = 0;
        vsp = 0;
    }
}
