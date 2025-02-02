if (check_below())
{
    vsp = 0;
}
else
{
    vsp += gsp;
    
    if (vsp > maxfall)
        vsp = maxfall;
}
