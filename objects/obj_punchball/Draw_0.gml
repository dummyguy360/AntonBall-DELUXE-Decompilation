draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha);
var _newInd = 37;

if (carrieable)
{
    var _subimage = loop(0, 2, sprite_get_duration(845), 0, age);
    
    if (x >= 231)
        draw_sprite(spr_punchball_get_offscreen_right, _subimage, 222, y);
    else if (x <= 28)
        draw_sprite(spr_punchball_get_offscreen_left, _subimage, 34, y);
    else
        _newInd = 654;
}

sprite_index = _newInd;

if (global.win)
    image_alpha = 0;
else if (!global.win)
    image_alpha = 1;
