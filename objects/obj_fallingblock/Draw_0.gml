if (sprite_index != -1)
{
    var _drawX = x;
    
    if (fallTimer < fallTime && y == originalY)
        _drawX += random_range(-shakeRange, shakeRange);
    
    draw_sprite(sprite_index, image_index, _drawX, y);
}
