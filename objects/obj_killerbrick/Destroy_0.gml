var _activeBrick = instance_create_depth(x, y, depth, obj_killerbrick_active);

if (reverse)
{
    with (_activeBrick)
    {
        acceleration = -acceleration;
        image_xscale = -1;
    }
}
