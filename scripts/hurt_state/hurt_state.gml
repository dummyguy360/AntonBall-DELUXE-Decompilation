function hurt_state()
{
    dash = 0;
    gsp = 0.25;
    hsp = approach(hsp, 0, 0.15);
    
    if (alarm[1] <= 0)
        currentstate = UnknownEnum.Value_0;
}
