function death_state()
{
    if (deadfloat)
    {
        vsp = 0;
        hsp = 0;
        gsp = 0;
    }
    else if (!deadfloat)
    {
        gsp = 0.1;
    }
    
    mask_index = spr_empty;
}
