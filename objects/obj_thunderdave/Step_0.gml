var _targetY = wave(minY, maxY, waveDuration, 0, age);

if (horizontalSpeed < 0)
    image_xscale = -1;
else
    image_xscale = 1;

if (y < _targetY)
    sprite_index = spr_thunderdave;
else
    sprite_index = spr_thunderdave_up;

x += horizontalSpeed;
y = _targetY;
event_inherited();
