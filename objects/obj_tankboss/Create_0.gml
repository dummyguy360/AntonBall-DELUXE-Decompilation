dealDamage = function()
{
    aimTimer = bigBombAimTime;
    currentState = UnknownEnum.Value_1;
    currentPhase += 1;
    sprite_index = spr_tankbod_hurt;
    image_index = 0;
    
    with (obj_player)
        audio_play_sound(choose(voice_yay1, voice_yay2), 0, false);
    
    if (currentPhase >= array_length(firingPatterns))
    {
        instance_create_depth(x, y, depth, obj_tankboss_corpse);
        instance_destroy(obj_brickparent);
        instance_destroy();
    }
};

cannonEffect = function()
{
    audio_stop_sound(snd_cannon_fire);
    audio_play_sound(snd_cannon_fire, 0, false);
    obj_controller.shake = 1;
    obj_controller.shakeDur = 5;
    obj_controller.shakeForce = 4;
};

firingPatterns = [[], [180, 165], [195, 180, 165], [180, 180, 165]];
firingIndex = 0;
bigBombsFired = 0;
aimDir = 180;
targetAimDir = aimDir;
smallBombSpeed = 1.75;
bigBombSpeed = 4;
bigBombGravity = 0.16;
aimRotationSpeed = 4;
smallBombFiringTime = 40;
bigBombAimTime = 180;
lockOnTime = 60;
aimTimer = bigBombAimTime;
currentPhase = 0;
currentState = UnknownEnum.Value_0;
fallSpeed = new vector2(0, 1.6);
audio_play_sound(snd_fall, 0, false);
