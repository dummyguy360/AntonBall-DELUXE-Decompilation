event_inherited();
var _waveRange = 8;
waveDuration = 90;
horizontalSpeed = 0.5 * ((x < (room_width / 2)) ? 1 : -1);
verticalSpeed = (_waveRange * 4) / waveDuration;
minY = y - _waveRange;
maxY = y + _waveRange;
