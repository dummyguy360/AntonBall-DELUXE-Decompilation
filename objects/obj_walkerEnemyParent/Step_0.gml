event_inherited();

if (warpEnabled && currentlyMoving)
{
    if (currentWarp == -4)
        currentWarp = instance_place(x, y, obj_enemy_warp);
    
    if (currentWarp != -4)
    {
        var _spawnPoint = undefined;
        
        with (obj_enemy_spawn_point)
        {
            if (spawnPointID == other.currentWarp.connectedSpawnPoint)
                _spawnPoint = id;
        }
        
        if (!enemyCollision || !spawn_point_occupied(_spawnPoint, object_index))
        {
            x = _spawnPoint.x;
            y = _spawnPoint.y;
            moveSpeed.y = 0;
            currentWarp = -4;
            image_index = 0;
            onSpawn(_spawnPoint);
        }
        else
        {
            x = -9999;
            y = -9999;
            exit;
        }
    }
}

if (!(place_meeting(x, y, obj_enemy_spawn_point) && age < maxSpawnTime))
    moveSpeed.y += grav;

if (place_meeting(x, y, obj_bouncyblock))
{
    bounce();
    audio_play_sound(snd_hit, 1, false);
}

var _oldSpeed = moveSpeed.x;
var _oldY = moveSpeed.y;
collision_check(moveSpeed, 131);
var _nearestPassthrough = instance_nearest(x, bbox_bottom, obj_passthrough);

if (_nearestPassthrough != -4 && moveSpeed.y >= 0 && bbox_bottom < _nearestPassthrough.bbox_top && !place_meeting(x, y, obj_passthrough))
{
    collision_check(moveSpeed, 172);
    
    if (moveSpeed.y == 0 && _oldY != 0 && moveSpeed.x == 0 && _oldSpeed != 0 && !place_meeting(x + _oldSpeed, y, obj_block))
        moveSpeed.x = _oldSpeed;
}

if (enemyCollision && !place_meeting(x, y, obj_walkerEnemyParent) && age >= maxSpawnTime)
{
    var _turnaroundCollisionEnemy = instance_place(x + moveSpeed.x, y, obj_walkerEnemyParent);
    
    if (_turnaroundCollisionEnemy != -4 && !_turnaroundCollisionEnemy.noCollision)
        moveSpeed.x = 0;
}

onCollisionCheck();

if (!currentlyMoving)
{
    if (stunRecoveryTimer > 0)
        moveSpeed.x = approach(moveSpeed.x, 0, stunFriction);
    else
        moveSpeed.x = 0;
}
else if (moveSpeed.x == 0)
{
    if (_oldSpeed != 0 && alarm[0] == -1)
    {
        moveSpeed.x = -_oldSpeed;
        
        if (updateSprite(turnaroundSprite))
        {
            image_index = 0;
            currentlyMoving = 0;
        }
    }
    else
    {
        moveSpeed.x = walkSpeed * image_xscale;
    }
}

x += moveSpeed.x;
y += moveSpeed.y;

if (moveSpeed.x != 0)
    image_xscale = sign(moveSpeed.x);

if (moveSpeed.y == 0)
{
    if (!(lastStanding && currentlyMoving))
        image_speed = 1;
    
    if (dropDown)
    {
        dropDown = 0;
        currentlyMoving = 1;
        moveSpeed.x = image_xscale * walkSpeed;
    }
}
else
{
    image_speed = 2;
}

if (alarm[0] == -1 && place_meeting(x, y, obj_enemy_killzone))
{
    updateSprite(spawnSprite);
    image_index = sprite_get_number(spawnSprite) - 1;
    image_speed = -1;
    alarm[0] = sprite_get_duration(spawnSprite);
}
