event_inherited();
b_isconsumable = 1;

consumable_method = function()
{
    var _player = instance_place(x, y, obj_player);
    
    if (_player == -4)
        _player = instance_nearest(x, y, obj_player);
    
    powerup_ghost(_player);
};
