if (!instance_exists(obj_player) && currentState != UnknownEnum.Value_0)
    currentState = UnknownEnum.Value_1;

if (place_meeting(x, y, obj_player))
    obj_player.deal_damage(-5);

switch (currentState)
{
    case UnknownEnum.Value_0:
        sprite_index = spr_tankbod_fall;
        
        if (collision_check(fallSpeed, 131))
        {
            currentState = UnknownEnum.Value_1;
            sprite_index = spr_tankbod_land;
            image_index = 0;
            obj_controller.shake = 1;
            obj_controller.shakeDur = 5;
            obj_controller.shakeForce = 4;
            audio_play_sound(snd_summitsphere, 0, false);
        }
        
        y += fallSpeed.y;
        break;
    
    case UnknownEnum.Value_1:
        if (!instance_exists(obj_tankBigBomb) || currentPhase == 3)
        {
            aimTimer = smallBombFiringTime;
            currentState = UnknownEnum.Value_2;
        }
        
        break;
    
    case UnknownEnum.Value_2:
        if (firingIndex >= array_length(firingPatterns[currentPhase]))
        {
            firingIndex = 0;
            aimTimer = bigBombAimTime;
            currentState = UnknownEnum.Value_3;
        }
        else
        {
            aimTimer -= 1;
            targetAimDir = firingPatterns[currentPhase][firingIndex];
            
            if (aimTimer <= 0)
            {
                firingIndex += 1;
                cannonEffect();
                var _smallBomb = instance_create_depth(x, y, depth, obj_tankSmallBomb);
                _smallBomb.speed = smallBombSpeed;
                _smallBomb.direction = aimDir;
                aimTimer = smallBombFiringTime;
            }
        }
        
        break;
    
    case UnknownEnum.Value_3:
        targetAimDir = projectile_angle(new vector2(x, y), new vector2(obj_player.x, obj_player.y), bigBombSpeed, bigBombGravity, 1);
        aimTimer -= 1;
        
        if (aimTimer <= 0)
        {
            aimTimer = lockOnTime;
            currentState = UnknownEnum.Value_4;
            audio_play_sound(snd_cannonrotate_stop, 0, false);
        }
        
        break;
    
    case UnknownEnum.Value_4:
        aimTimer -= 1;
        
        if (aimTimer <= 0)
        {
            cannonEffect();
            var _bigBomb = instance_create_depth(x, y, depth, obj_tankBigBomb);
            _bigBomb.grav = bigBombGravity;
            _bigBomb.velocity = degtovec2(aimDir);
            _bigBomb.velocity.multiply(bigBombSpeed);
            bigBombsFired += 1;
            
            if (currentPhase == 3 && bigBombsFired < 2)
            {
                aimTimer = bigBombAimTime;
                currentState = UnknownEnum.Value_3;
            }
            else
            {
                bigBombsFired = 0;
                currentState = UnknownEnum.Value_1;
            }
        }
        
        break;
}

if (aimDir != targetAimDir)
{
    if (!audio_is_playing(snd_cannonrotate))
        audio_play_sound(snd_cannonrotate, 0, true);
    
    aimDir = approach(aimDir, targetAimDir, aimRotationSpeed);
    
    if (aimDir == targetAimDir)
    {
        if (currentState != UnknownEnum.Value_3 && !audio_is_playing(snd_cannonrotate_stop))
            audio_play_sound(snd_cannonrotate_stop, 0, false);
    }
}
else
{
    audio_stop_sound(snd_cannonrotate);
}
