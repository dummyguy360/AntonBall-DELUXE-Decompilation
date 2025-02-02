if (growing)
{
    if (scale < 1)
        scale += 0.05;
    else if (scale == 1)
        vspeed = 0;
}
else if (!growing)
{
    if (scale > 0)
        scale -= 0.05;
    
    if (scale == 0)
        instance_destroy(self);
}
