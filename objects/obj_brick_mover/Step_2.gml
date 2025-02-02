if (currentThresholdIndex < array_length(thresholds))
{
    if (obj_controller.playerBallHits >= thresholds[currentThresholdIndex])
    {
        var _collision = 0;
        
        with (obj_ball)
        {
            var _checkX = x + other.incrementAmount;
            
            if (place_meeting(_checkX, y, obj_barrier) || place_meeting(_checkX, y, obj_brickparent))
                _collision = 1;
        }
        
        if (!_collision)
        {
            audio_play_sound(snd_brickmove, 1, false);
            obj_controller.shake = 1;
            obj_controller.shakeDur = 3;
            obj_controller.shakeForce = 2;
            
            with (obj_brickparent)
                x -= other.incrementAmount;
            
            with (obj_metalbrick)
                x -= other.incrementAmount;
            
            backBarrier.x -= incrementAmount;
            currentThresholdIndex++;
        }
    }
}
