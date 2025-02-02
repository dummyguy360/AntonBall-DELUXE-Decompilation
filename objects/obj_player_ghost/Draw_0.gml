var _xoffset = sprite_get_xoffset(sprite_index);
var _yoffset = sprite_get_yoffset(sprite_index);

if (is_undefined(mysurface) || !surface_exists(mysurface))
{
    if (!instance_exists(creator))
    {
        instance_destroy();
        exit;
    }
    
    mysurface = surface_create(32, 32);
    surface_set_target(mysurface);
    draw_clear_alpha(c_white, 0);
    
    with (creator)
    {
        var _xx = xpos;
        var _yy = ypos;
        xpos = _xoffset;
        ypos = _yoffset;
        event_perform(ev_draw, ev_draw_normal);
        xpos = _xx;
        ypos = _yy;
    }
    
    surface_reset_target();
}

draw_surface_ext(mysurface, x - _xoffset, y - _yoffset, 1, 1, 0, c_white, 0.5);
