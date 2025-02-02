var inst = instance_place(x + hspeed, y + vspeed, obj_lightninglarry);

if (inst != -4)
{
    if (currentstate != 2)
    {
        var _dir = new vector2(hspeed, vspeed);
        var _speed = _dir.getMagnitude();
        _dir.normalize();
        var _normal = undefined;
        var _hCol = 0;
        var _vCol = 0;
        
        if (place_meeting(x + hspeed, y, obj_lightninglarry))
        {
            while (!place_meeting(x + _dir.x, y, obj_lightninglarry))
                x += _dir.x;
            
            _hCol = 1;
        }
        
        if (place_meeting(x, y + vspeed, obj_lightninglarry))
        {
            while (!place_meeting(x, y + _dir.y, obj_lightninglarry))
                y += _dir.y;
            
            _vCol = 1;
        }
        
        if (!_hCol && !_vCol)
        {
            while (!place_meeting(x + _dir.x, y + _dir.y, obj_lightninglarry))
            {
                x += _dir.x;
                y += _dir.y;
            }
            
            hspeed = -hspeed;
            vspeed = -vspeed;
        }
        else if (_hCol)
        {
            _normal = new vector2(-sign(hspeed), 0);
        }
        else if (_vCol)
        {
            _normal = new vector2(0, -sign(vspeed));
        }
        
        if (!is_undefined(_normal))
        {
            if (ballcounter >= maxBallCounter)
            {
                var _randomDir = _normal.angle();
                _randomDir = random_range(_randomDir - randomDirectionSpread, _randomDir + randomDirectionSpread);
                _dir = degtovec2(_randomDir);
                ballcounter = 0;
            }
            else
            {
                _dir.reflect(_normal);
            }
            
            _dir.multiply(_speed);
            hspeed = _dir.x;
            vspeed = _dir.y;
        }
    }
    
    inst.killingball = id;
    
    with (inst)
        event_user(0);
    
    global.ballhits += 1;
    hit = 0;
    spikecounter -= 1;
    ballcounter += 1;
    ballbuffer = defaultBallBuffer;
    
    if (global.vs_stage && momentum > 1.5)
        momentum -= 0.05;
}
