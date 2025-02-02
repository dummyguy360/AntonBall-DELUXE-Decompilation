if (global.win)
{
    instance_destroy();
    exit;
}

age += image_speed;

if (place_meeting(x, y, obj_enemy_spawn_point) && age < maxSpawnTime)
    updateSprite(spawnSprite);
else if (sprite_index == spawnSprite && alarm[0] == -1)
    sprite_index = defaultSprite;

if (lastStanding)
{
    paletteIndex = 1;
    
    if (currentlyMoving)
        image_speed = 2;
}

if (stunRecoveryTimer > 0)
{
    stunRecoveryTimer -= 1;
    currentlyMoving = 0;
    
    if (stunRecoveryTimer <= 0)
    {
        currentlyMoving = 1;
        attacking = 1;
        onStunRecovery();
    }
}

var _collisionPlayer = instance_place(x, y, obj_player);

if (_collisionPlayer != -4 && !(_collisionPlayer.currentstate == UnknownEnum.Value_7) && !_collisionPlayer.b_ishurt)
{
    if (attacking)
    {
        if (lethal)
            _collisionPlayer.kill();
        else
            _collisionPlayer.deal_damage(sign(_collisionPlayer.x - x) * 2);
    }
    
    onPlayerHit(_collisionPlayer);
}

if (age >= maxSpawnTime)
{
    for (var i = 0; i < array_length(vulnerableObjects); i++)
    {
        _inst = instance_place(x, y, vulnerableObjects[i]);
        
        if (_inst != -4 && _inst.lethal && !noCollision)
        {
            if (stunRecoveryTimer <= 0)
            {
                if (_inst.object_index == obj_antoncube)
                {
                    _inst.hsp = _inst.hsp * -1;
                    _inst.thrown = 0;
                }
                
                _inst.vsp = -1;
            }
            
            onVulnerableHit(_inst, sign(x - _inst.x));
        }
    }
}

var _inst = instance_place(x, y, obj_ball);

if (_inst != -4)
    onArcadeBallHit(sign(x - _inst.x));
