var _rail = instance_place(x, y, obj_moving_platform_rail);

if (_rail != -4)
{
    if (_rail.image_xscale > _rail.image_yscale)
    {
        movePoints = [_rail.bbox_left, _rail.bbox_right];
    }
    else
    {
        movePoints = [_rail.bbox_top, _rail.bbox_bottom];
        horizontal = 0;
    }
}
else
{
    instance_destroy();
}
