event_inherited();

bounce = function()
{
    while (place_meeting(x, y, obj_block))
        y -= 1;
    
    moveSpeed.x = -moveSpeed.x;
    moveSpeed.y = -1.5;
};

var _onVulnerableHit = function(argument0, argument1)
{
    dropDown = 0;
    
    if (stunRecoveryTimer <= 0)
    {
        moveSpeed.x = argument1 * 2;
        moveSpeed.y = -2;
    }
    
    method_inherited(onVulnerableHit);
};

inherit_method("onVulnerableHit", _onVulnerableHit);

var _onSpawn = function(argument0)
{
    method_inherited(onSpawn);
    
    if (argument0.dropDown)
    {
        dropDown = 1;
        moveSpeed.x = 0;
        currentlyMoving = 0;
        age = maxSpawnTime;
    }
    else
    {
        moveSpeed.x = image_xscale * walkSpeed;
        age = 0;
    }
};

inherit_method("onSpawn", _onSpawn);

onStunRecovery = function()
{
};

onCollisionCheck = function()
{
};

vulnerableObjects = [142, 202];
stunFriction = 0.16;
walkSpeed = 0.25;
frenzySpeed = 1;
grav = 0.16;
warpEnabled = 1;
enemyCollision = 1;
moveSpeed = new vector2();
turnaroundSprite = undefined;
currentWarp = -4;
dropDown = 0;
