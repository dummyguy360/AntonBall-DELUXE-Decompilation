currentState = UnknownEnum.Value_0;
grav = 0.16;
vsp = new vector2(0, 0);
reflectSpeed = 6.5;
targetY = y;
startY = -50;
y = startY;
nearestBrick = -4;
usePenalty = 10000;
exploded = 0;

explode = function()
{
    audio_play_sound(snd_bombexplode, 0, false);
    create_sprite_effect(x, y, 937);
    exploded = 1;
};
