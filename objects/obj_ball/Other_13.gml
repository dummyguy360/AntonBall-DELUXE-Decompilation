var inst = instance_place(x + hspeed, y + vspeed, obj_barrier);

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
        
        if (place_meeting(x + hspeed, y, obj_barrier))
        {
            while (!place_meeting(x + _dir.x, y, obj_barrier))
                x += _dir.x;
            
            _hCol = 1;
        }
        
        if (place_meeting(x, y + vspeed, obj_barrier))
        {
            while (!place_meeting(x, y + _dir.y, obj_barrier))
                y += _dir.y;
            
            _vCol = 1;
        }
        
        if (!_hCol && !_vCol)
        {
            while (!place_meeting(x + _dir.x, y + _dir.y, obj_barrier))
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
        
        if (mercyTimer > mercyTime)
        {
            var _nearestBrick = instance_nearest(x, y, obj_brickparent);
            var _brickDir = new vector2(_nearestBrick.hsp, _nearestBrick.vsp);
            var _brickSpeed = _brickDir.getMagnitude();
            _brickDir.normalize();
            var _targetPos = intercept_pos(new vector2(x, y), speed, new vector2(_nearestBrick.x, _nearestBrick.y), _brickSpeed, _brickDir);
            
            if (!collision_line(x, y, _targetPos.x, _targetPos.y, obj_barrier, false, false))
            {
                var _newDir = point_direction(x, y, _targetPos.x, _targetPos.y);
                
                if (abs(angle_difference(direction, _newDir)) <= mercyRange)
                    direction = _newDir;
            }
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
    audio_stop_sound(snd_bounce2);
    audio_play_sound(snd_bounce2, 1000, false);
    
    if (global.vs_stage && momentum > 1.5)
        momentum -= 0.05;
    
    if (!doubleCollision)
    {
        doubleCollision = 1;
        event_user(3);
    }
}
