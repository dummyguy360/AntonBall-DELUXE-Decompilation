frame_counter();

if (currentstate == 0)
{
    if (framespeed != 0)
    {
        if (framespeed > 0)
            framespeed += -0.005;
        else if (framespeed < 0)
            framespeed += 0.005;
    }
    
    if (framespeed > 2)
        framespeed = 2;
    
    if (hits == 10 && global.vs_stage)
    {
        framespeed = 0.25;
        sprite = spr_smoke;
        alarm[1] = 5;
        currentstate = 1;
    }
}
