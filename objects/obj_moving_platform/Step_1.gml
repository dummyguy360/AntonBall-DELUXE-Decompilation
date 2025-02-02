age += 1;
var _targetPos = wave(movePoints[0], movePoints[1], moveDuration, 0, age);

if (horizontal)
    movement.x = _targetPos - x;
else
    movement.y = _targetPos - y;

event_inherited();
x = wrap(x, 0, room_width);
y = wrap(y, 0, room_height);
