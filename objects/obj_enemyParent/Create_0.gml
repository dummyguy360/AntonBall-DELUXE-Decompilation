stun = function()
{
    stunRecoveryTimer = stunRecoveryTime;
    attacking = 0;
    sprite_index = stunSprites[0][0];
};

kill = function(argument0, argument1)
{
    if (!is_undefined(corpseSprite))
    {
        if (is_undefined(argument0))
            argument0 = choose(-1, 1);
        
        var _corpse = instance_create_depth(x, y, 0, obj_enemyCorpse);
        _corpse.sprite_index = corpseSprite;
        _corpse.palette = palette;
        _corpse.paletteIndex = paletteIndex;
        _corpse.moveSpeed.x *= argument0;
        _corpse.image_xscale = argument0;
    }
    
    if (!is_undefined(argument1))
    {
        var _points = min((argument1.combo + 1) * 800, 3200);
        
        if (argument1.playerData == ds_list_find_value(global.activePlayers, 0))
            global.points_p1 += _points;
        else
            global.points_p2 += _points;
        
        var _sprite = spr_800_mini;
        var _image = 0;
        
        if (_points > 800)
        {
            _sprite = spr_1600;
            _image = (_points / 800) - 2;
        }
        
        with (instance_create_depth(x, y, depth - 1, obj_pointmarker))
        {
            sprite_index = _sprite;
            image_index = _image;
        }
        
        with (argument1)
        {
            combo += 1;
            combotimer = combotimermax;
        }
    }
    
    obj_controller.shake = 1;
    obj_controller.shakeDur = 3;
    obj_controller.shakeForce = 2;
    audio_play_sound(snd_hit, 1, false);
    instance_destroy();
};

updateSprite = function(argument0)
{
    if (!is_undefined(argument0))
    {
        sprite_index = argument0;
        return 1;
    }
    
    return 0;
};

onSpawn = function(argument0)
{
    image_xscale = argument0.facing;
};

lethal = 1;
attacking = 1;
noCollision = 0;
warpEnabled = 0;
vulnerableObjects = [];
stunRecoveryTime = 320;
stunRecoveryTimer = 0;
age = 0;
maxSpawnTime = 60;
currentlyMoving = 1;
lastStanding = 0;
killed = 0;
stunSprites = [[sprite_index]];
currentStunSprite = spr_danton_clutch;
corpseSprite = undefined;
defaultSprite = sprite_index;
spawnSprite = undefined;
palette = undefined;
paletteIndex = 0;

onPlayerHit = function(argument0)
{
    if (stunRecoveryTimer > 0)
        kill(sign(x - argument0.x), argument0);
};

onVulnerableHit = function(argument0, argument1)
{
    if (stunRecoveryTimer <= 0)
    {
        audio_play_sound(snd_hit, 1, false);
        stun();
    }
};

onArcadeBallHit = function(argument0)
{
};

onStunRecovery = function()
{
};
