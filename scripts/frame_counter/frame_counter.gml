function frame_counter()
{
    if (framespeed > 0)
        frame += framespeed;
    else if (framespeed < 0)
        frame -= framespeed;
}
