targetPosition.x = wave(minX, maxX, loopDuration, 0, age);
targetPosition.y = wave(minY, maxY, loopDuration, loopDuration / 4, age);

if (x > targetPosition.x)
    image_xscale = -1;
else
    image_xscale = 1;

if (y < targetPosition.y)
    sprite_index = spr_lightninglarry_up;
else
    sprite_index = spr_lightninglarry;

var _currentPosition = new vector2(x, y);
_currentPosition.approachVector(targetPosition, moveSpeed);
x = _currentPosition.x;
y = _currentPosition.y;
event_inherited();
