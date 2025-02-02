event_inherited();
var _trueBall = 0;

with (obj_ball)
{
    if (object_index == obj_ball)
    {
        _trueBall = 1;
        break;
    }
}

if (!_trueBall)
    instance_change(obj_ball, false);
