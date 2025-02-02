event_inherited();
b_isconsumable = 1;

consumable_method = function()
{
    var _player = instance_place(x, y, obj_player);
    
    if (_player == -4)
        _player = instance_nearest(x, y, obj_player);
    
    powerup_gun(_player);
};

alarm[1] = random_range(30, 120);

if (global.adventure_stage)
{
    alarm[10] = -1;
    alarm[8] = -1;
}
