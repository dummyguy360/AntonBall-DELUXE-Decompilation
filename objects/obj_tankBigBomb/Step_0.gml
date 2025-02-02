if (!instance_exists(obj_tankboss))
{
    instance_destroy();
    exit;
}

switch (currentState)
{
    case UnknownEnum.Value_0:
        if (place_meeting(x, y, obj_player))
            explode();
        
        break;
    
    case UnknownEnum.Value_1:
        var _player = instance_place(x, y, obj_player);
        
        if (_player != -4 && _player.currentstate == UnknownEnum.Value_4)
        {
            _player.hsp = 0;
            audio_play_sound(snd_hit, 1, false);
            audio_play_sound(snd_fall, 1, false);
            currentState = UnknownEnum.Value_2;
            velocity = instance_direction(7);
            velocity.multiply(reflectSpeed);
        }
        else
        {
            explodeTimer -= 1;
            
            if (explodeTimer <= pulseTime)
                sprite_index = spr_bigBombPulse;
            
            if (explodeTimer <= 0)
                explode();
        }
        
        break;
    
    case UnknownEnum.Value_2:
        var _boss = instance_place(x, y, obj_tankboss);
        
        if (_boss != -4)
        {
            _boss.dealDamage();
            explode();
        }
        
        break;
}

if (currentState != UnknownEnum.Value_2)
{
    velocity.y += grav;
    
    if (place_meeting(x + velocity.x, y + velocity.y, obj_block))
    {
        var _hCol = 0;
        var _vCol = 0;
        
        if (place_meeting(x + velocity.x, y, obj_block))
        {
            while (!place_meeting(x + sign(velocity.x), y, obj_block))
                x += sign(velocity.x);
            
            _hCol = 1;
            velocity.x = 0;
        }
        
        if (place_meeting(x, y + velocity.y, obj_block))
        {
            while (!place_meeting(x, y + sign(velocity.y), obj_block))
                y += sign(velocity.y);
            
            _vCol = 1;
            velocity.y = 0;
            velocity.x = approach(velocity.x, 0, fric);
        }
        
        if (!_hCol && !_vCol)
        {
            while (!place_meeting(x + sign(velocity.x), y + sign(velocity.y), obj_block))
            {
                x += sign(velocity.x);
                y += sign(velocity.y);
            }
            
            velocity.set(0, 0);
        }
        
        if (velocity.x == 0)
            currentState = UnknownEnum.Value_1;
    }
}

x += velocity.x;
y += velocity.y;
