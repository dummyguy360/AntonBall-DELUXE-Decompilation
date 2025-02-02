event_inherited();

if (stunRecoveryTimer <= 0 && age >= maxSpawnTime)
{
    if (kickCooldownTimer <= 0)
    {
        var _collisionPunchBall = instance_place(x, y, obj_punchball);
        
        if (_collisionPunchBall != -4 && !_collisionPunchBall.lethal)
        {
            currentlyMoving = 0;
            sprite_index = spr_seal_idle;
            var _nearestPlayer = getPlayerInRange();
            
            if (_nearestPlayer != -4)
            {
                _collisionPunchBall.hsp = kickSpeedX * sign(x - _nearestPlayer.x);
                _collisionPunchBall.vsp = kickSpeedY;
                _collisionPunchBall.bounce = 0;
                sprite_index = spr_seal_kick;
                image_speed = 1;
                image_index = 0;
                kickCooldownTimer = kickCooldown;
            }
        }
        else if (sprite_index == spr_seal_idle)
        {
            sprite_index = defaultSprite;
            currentlyMoving = 1;
        }
    }
    else
    {
        kickCooldownTimer -= 1;
    }
}
