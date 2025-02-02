if (!instance_exists(obj_tankboss))
{
    instance_destroy();
    exit;
}

var _collision = 0;
var _wall = instance_place(x, y, obj_block);

if (_wall != -4 && _wall.object_index == obj_block)
    _collision = 1;

var _player = instance_place(x, y, obj_player);

if (_player != -4)
{
    _collision = 1;
    _player.kill();
}

if (_collision)
{
    audio_play_sound(snd_bombexplode, 0, false);
    obj_controller.shake = 1;
    obj_controller.shakeDur = 4;
    obj_controller.shakeForce = 3;
    create_sprite_effect(x, y, 58);
    instance_destroy();
}
