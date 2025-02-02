with (other)
{
    if (warpEnabled)
    {
        x = other.targetx;
        var _dir = sign((room_width / 2) - x);
        
        while (place_meeting(x, y, obj_warp))
            x += _dir;
    }
}
