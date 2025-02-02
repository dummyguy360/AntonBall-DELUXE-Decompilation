moveSpeed = 0.2;
baseY = y;
bobOffset = random(1);
bobAmount = 3;
bobDuration = 2.6;
var _xOff = (sprite_width / 2) - 17;

if (x < (room_width / 2))
    targetX = _xOff;
else
    targetX = room_width - _xOff;
