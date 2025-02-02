event_inherited();
walkSpeed = 0.5;

onCollisionCheck = function()
{
    if (stunRecoveryTimer <= 0)
        exit;
    
    var _xDist = infinity;
    var _punchball = -4;
    
    with (obj_punchball)
    {
        var _currentXDist = abs(other.x - x);
        
        if (on_ground && abs(other.y - y) < 10 && _currentXDist < _xDist)
        {
            _xDist = _currentXDist;
            _punchball = id;
        }
    }
    
    if (_punchball != -4)
    {
        if (image_xscale != sign(_punchball.x - x))
            moveSpeed.x = 0;
    }
    else
    {
        var _nearestPlayer = getPlayerInRange();
        
        if (_nearestPlayer != -4)
        {
            if (image_xscale == sign(_nearestPlayer.x - x))
                moveSpeed.x = 0;
        }
    }
};

getPlayerInRange = function()
{
    var _nearestPlayer = instance_nearest(x, y, obj_player);
    
    if (_nearestPlayer == -4)
        return -4;
    
    if (abs(_nearestPlayer.y - y) < 10 && point_distance(x, y, _nearestPlayer.x, _nearestPlayer.y) < playerDetectionRange)
        return _nearestPlayer;
    
    return -4;
};

kickSpeedX = 2.5;
kickSpeedY = -1;
kickCooldown = 10;
kickCooldownTimer = 0;
playerDetectionRange = 30;
spawnSprite = spr_seal_spawn;
corpseSprite = spr_seal_corpse;
turnaroundSprite = spr_seal_turn;
stunSprites = [[325], [579], [883, sprite_get_duration(883) + sprite_get_duration(579)]];
