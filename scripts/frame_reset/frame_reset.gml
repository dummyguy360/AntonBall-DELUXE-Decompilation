function frame_reset()
{
    if (framespeed > 0)
    {
        if (floor(frame) >= sprite_get_number(sprite))
            frame = 0;
    }
    
    if (frame < 0)
        frame = sprite_get_number(sprite);
}
