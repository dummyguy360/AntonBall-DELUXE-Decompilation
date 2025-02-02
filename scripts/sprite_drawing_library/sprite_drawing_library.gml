function draw_nineslice(argument0, argument1, argument2, argument3, argument4)
{
    argument1 = new rect(argument1.x, argument1.y, argument1.width, argument1.height);
    argument2 = default_val(argument2, 0);
    argument3 = default_val(argument3, c_white);
    argument4 = default_val(argument4, 1);
    var _spriteWidth = sprite_get_width(argument0);
    var _subSize = _spriteWidth / 3;
    var _currentSubimage = 0;
    var _tileAmount;
    
    if (argument2)
    {
        _tileAmount = new vector2(round(argument1.width / _subSize), round(argument1.height / _subSize));
        argument1.resize(_tileAmount.x * _subSize, _tileAmount.y * _subSize);
        _tileAmount.add(-2, -2);
    }
    
    var _spriteRect = new rect(0, 0, _spriteWidth - _subSize, _spriteWidth - _subSize);
    var _centerSize = new vector2(argument1.width - (_subSize * 2), argument1.height - (_subSize * 2));
    argument1.add(-_subSize, -_subSize);
    
    for (var i = 0; i < 4; i++)
    {
        var _spritePos = _spriteRect.getCorner(i);
        var _drawPos = argument1.getCorner(i);
        draw_sprite_part_ext(argument0, _currentSubimage, _spritePos.x, _spritePos.y, _subSize, _subSize, _drawPos.x, _drawPos.y, 1, 1, argument3, argument4);
    }
    
    if (argument2)
    {
        for (var i = 0; i < 2; i++)
        {
            var _spriteY = _spriteRect.height * i;
            var _drawY = argument1.y + (argument1.height * i);
            var _drawOffset = 0;
            
            repeat (_tileAmount.x)
            {
                draw_sprite_part_ext(argument0, _currentSubimage, _subSize, _spriteY, _subSize, _subSize, argument1.x + _subSize + _drawOffset, _drawY, 1, 1, argument3, argument4);
                _drawOffset += _subSize;
            }
            
            var _spriteX = _spriteRect.width * i;
            var _drawX = argument1.x + (argument1.width * i);
            _drawOffset = 0;
            
            repeat (_tileAmount.y)
            {
                draw_sprite_part_ext(argument0, _currentSubimage, _spriteX, _subSize, _subSize, _subSize, _drawX, argument1.y + _subSize + _drawOffset, 1, 1, argument3, argument4);
                _drawOffset += _subSize;
            }
        }
        
        for (var i = 0; i < _tileAmount.x; i++)
        {
            for (var j = 0; j < _tileAmount.y; j++)
                draw_sprite_part_ext(argument0, _currentSubimage, _subSize, _subSize, _subSize, _subSize, argument1.x + (_subSize * (i + 1)), argument1.y + (_subSize * (j + 1)), 1, 1, argument3, argument4);
        }
    }
    else
    {
        for (var i = 0; i < 2; i++)
        {
            var _spriteY = _spriteRect.height * i;
            var _drawY = argument1.y + (argument1.height * i);
            draw_sprite_part_ext(argument0, _currentSubimage, _subSize, _spriteY, _subSize, _subSize, argument1.x + _subSize, _drawY, _centerSize.x / _subSize, 1, argument3, argument4);
            var _spriteX = _spriteRect.width * i;
            var _drawX = argument1.x + (argument1.width * i);
            draw_sprite_part_ext(argument0, _currentSubimage, _spriteX, _subSize, _subSize, _subSize, _drawX, argument1.y + _subSize, 1, _centerSize.y / _subSize, argument3, argument4);
        }
        
        draw_sprite_part_ext(argument0, _currentSubimage, _subSize, _subSize, _subSize, _subSize, argument1.x + _subSize, argument1.y + _subSize, _centerSize.x / _subSize, _centerSize.y / _subSize, argument3, argument4);
    }
}

function draw_sprite_tiled_rect(argument0, argument1, argument2, argument3, argument4, argument5, argument6)
{
    var _tileScale = new vector2(1, 1);
    
    if (is_undefined(argument3))
        argument3 = new vector2(sprite_get_width(argument0), sprite_get_height(argument0));
    else
        _tileScale.set(argument3.x / sprite_get_width(argument0), argument3.y / sprite_get_height(argument0));
    
    argument4 = default_val(argument4, 0);
    argument5 = default_val(argument5, c_white);
    argument6 = default_val(argument6, 1);
    var _tileCount = new vector2(ceil(argument2.width / argument3.x), ceil(argument2.height / argument3.y));
    
    for (var i = 0; i < _tileCount.x; i++)
    {
        for (var j = 0; j < _tileCount.y; j++)
            draw_sprite_ext(argument0, argument1, argument2.x + (argument3.x * i), argument2.y + (argument3.y * j), _tileScale.x, _tileScale.y, argument4, argument5, argument6);
    }
}

function sprite_get_duration(argument0)
{
    return round(room_speed * (sprite_get_number(argument0) / sprite_get_speed(argument0)));
}

function draw_sprite_centered(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
{
    var _oldX = sprite_get_xoffset(argument0);
    var _oldY = sprite_get_yoffset(argument0);
    sprite_set_offset(argument0, sprite_get_width(argument0) / 2, sprite_get_height(argument0) / 2);
    draw_sprite_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8);
    sprite_set_offset(argument0, _oldX, _oldY);
}
