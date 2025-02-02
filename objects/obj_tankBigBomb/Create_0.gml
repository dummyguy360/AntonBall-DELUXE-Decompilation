fric = 0.27;
currentState = UnknownEnum.Value_0;
reflectSpeed = 6.5;
explodeTimer = 300;
pulseTime = 120;

explode = function()
{
    var _explosionRadius = 16;
    
    if (currentState != UnknownEnum.Value_2 && instance_exists(obj_player) && (currentState == UnknownEnum.Value_0 || point_distance(x, y, obj_player.x, obj_player.y) < _explosionRadius))
        obj_player.kill();
    
    audio_play_sound(snd_bombexplode, 0, false);
    obj_controller.shake = 1;
    obj_controller.shakeDur = 6;
    obj_controller.shakeForce = 5;
    audio_stop_sound(snd_fall);
    create_sprite_effect(x, y, 937);
    instance_destroy();
};
