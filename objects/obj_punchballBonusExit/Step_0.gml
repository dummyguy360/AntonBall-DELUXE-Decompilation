var _collisionPlayer = instance_place(x, y, obj_player);

if (_collisionPlayer != -4 && _collisionPlayer.currentstate != UnknownEnum.Value_3 && !global.win)
    global.win = 1;
