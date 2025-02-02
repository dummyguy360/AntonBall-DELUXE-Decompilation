function check_below()
{
    return place_meeting(x, y + 1, obj_block);
}

function check_slope()
{
    return place_meeting(x, y + 1, obj_slope);
}

function check_below_passthrough()
{
    if (currentstate != UnknownEnum.Value_5)
    {
        if (position_meeting(x, y + 1, obj_passthrough) && !position_meeting(x, y, obj_passthrough) && vsp > -0.0001)
            return position_meeting(x, y + 1, obj_passthrough);
    }
}

function collision_check(argument0, argument1)
{
    var _collisionInst = instance_place(x + argument0.x, y + argument0.y, argument1);
    
    if (_collisionInst == -4)
        return 0;
    
    if (variable_instance_exists(_collisionInst, "noCollision") && _collisionInst.noCollision)
        return 0;
    
    var _hCol = 0;
    var _vCol = 0;
    
    if (place_meeting(x + argument0.x, y, argument1))
    {
        for (var i = 0; !place_meeting(x + sign(argument0.x), y, argument1) && i < argument0.x; i++)
            x += sign(argument0.x);
        
        _hCol = 1;
        argument0.x = 0;
    }
    
    if (place_meeting(x, y + argument0.y, argument1))
    {
        for (var i = 0; !place_meeting(x, y + sign(argument0.y), argument1) && i < argument0.y; i++)
            y += sign(argument0.y);
        
        _vCol = 1;
        argument0.y = 0;
    }
    
    if (!_hCol && !_vCol)
    {
        for (var i = 0; !place_meeting(x + sign(argument0.x), y + sign(argument0.y), argument1) && i < argument0.x && i < argument0.y; i++)
        {
            x += sign(argument0.x);
            y += sign(argument0.y);
        }
        
        argument0.set(0, 0);
    }
    
    return 1;
}

function check_below_throwable()
{
    if (currentstate != UnknownEnum.Value_5 || UnknownEnum.Value_6)
    {
        if (place_meeting(x, y + 1, obj_throwable) && !place_meeting(x, y, obj_throwable) && vsp > -0.0001)
        {
            colliding_item_id = instance_place(x, y + 1, obj_throwable);
            
            if (!colliding_item_id.carried && !colliding_item_id.b_thrown && !colliding_item_id.b_isconsumable)
                return 1;
        }
    }
    
    return 0;
}

function spawn_point_occupied(argument0, argument1)
{
    var _maskSprite = object_get_sprite(argument1);
    var _bboxLeft = sprite_get_bbox_left(_maskSprite);
    var _bboxTop = sprite_get_bbox_top(_maskSprite);
    var _collisionRect = new rect((argument0.x + _bboxLeft) - sprite_get_xoffset(_maskSprite), (argument0.y + _bboxTop) - sprite_get_yoffset(_maskSprite), sprite_get_bbox_right(_maskSprite) - _bboxLeft, sprite_get_bbox_bottom(_maskSprite) - _bboxTop);
    _collisionRect.x -= _collisionRect.width;
    _collisionRect.y -= _collisionRect.height;
    _collisionRect.resize(_collisionRect.width * 3, _collisionRect.height * 3);
    return _collisionRect.containsObject(10);
}
