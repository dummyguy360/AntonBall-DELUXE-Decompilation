function vector2(argument0, argument1) constructor
{
    x = default_val(argument0, 0);
    y = default_val(argument1, 0);
    
    static set = function(argument0, argument1)
    {
        x = argument0;
        y = argument1;
    };
    
    static add = function(argument0, argument1)
    {
        x += argument0;
        y += argument1;
    };
    
    static addVector = function(argument0)
    {
        x += argument0.x;
        y += argument0.y;
    };
    
    static subVector = function(argument0)
    {
        x -= argument0.x;
        y -= argument0.y;
    };
    
    static multiply = function(argument0)
    {
        x *= argument0;
        y *= argument0;
    };
    
    static getMagnitude = function()
    {
        return sqrt((x * x) + (y * y));
    };
    
    static getTotal = function()
    {
        return x + y;
    };
    
    static manhattanNormalize = function()
    {
        var _total = abs(x) + abs(y);
        
        if (_total == 0)
            exit;
        
        x /= _total;
        y /= _total;
    };
    
    static normalize = function()
    {
        var _mag = getMagnitude();
        
        if (_mag == 0)
            exit;
        
        x /= _mag;
        y /= _mag;
    };
    
    static setMagnitude = function(argument0)
    {
        if (argument0 == 0)
        {
            x = 0;
            y = 0;
            exit;
        }
        
        normalize();
        multiply(argument0);
    };
    
    static clampMagnitude = function(argument0, argument1)
    {
        var _mag = getMagnitude();
        
        if (_mag < argument0)
            setMagnitude(argument0);
        
        if (_mag > argument1)
            setMagnitude(argument1);
    };
    
    static addMagnitude = function(argument0)
    {
        setMagnitude(max(0, getMagnitude() + argument0));
    };
    
    static reflect = function(argument0)
    {
        var _dp = dot_product_vectors(self, argument0);
        argument0.multiply(-2 * _dp);
        addVector(argument0);
    };
    
    static angle = function()
    {
        return point_direction(0, 0, x, y);
    };
    
    static roundComponents = function()
    {
        x = round(x);
        y = round(y);
    };
    
    static toString = function()
    {
        return "(" + string(x) + "," + string(y) + ")";
    };
    
    static equalsVector = function(argument0)
    {
        return x == argument0.x && y == argument0.y;
    };
    
    static approachVector = function(argument0, argument1)
    {
        var _dir;
        
        if (is_struct(argument1))
        {
            _dir = argument1;
        }
        else
        {
            _dir = point_direction_vector(self, argument0);
            _dir.multiply(argument1);
        }
        
        x = approach(x, argument0.x, abs(_dir.x));
        y = approach(y, argument0.y, abs(_dir.y));
    };
    
    static cardinalRotate = function(argument0, argument1)
    {
        argument1 = wrap(round(argument1), 0, 3);
        subVector(argument0);
        
        switch (argument1)
        {
            case 1:
                set(y, -x);
                break;
            
            case 2:
                set(-x, -y);
                break;
            
            case 3:
                set(-y, x);
                break;
        }
        
        addVector(argument0);
    };
    
    static copy = function()
    {
        return new vector2(x, y);
    };
    
    static snapToCardinal = function()
    {
        var _mag = getMagnitude();
        
        if (abs(x) > abs(y))
        {
            y = 0;
            x = sign(x) * _mag;
        }
        else
        {
            x = 0;
            y = sign(y) * _mag;
        }
    };
}

function cardtovec2(argument0)
{
    argument0 = cardtodeg(argument0);
    return degtovec2(argument0);
}

function fast_cardtovec2(argument0, argument1)
{
    switch (argument0)
    {
        case 0:
            return new vector2(argument1, 0);
        
        case 1:
            return new vector2(0, -argument1);
        
        case 2:
            return new vector2(-argument1, 0);
        
        case 3:
            return new vector2(0, argument1);
    }
}

function cardtodeg(argument0)
{
    argument0 = wrap(argument0, 0, 3);
    return map(argument0, 0, 4, 0, 360);
}

function degtovec2(argument0)
{
    return new vector2(dcos(argument0), -dsin(argument0));
}

function dot_product_vectors(argument0, argument1)
{
    return dot_product(argument0.x, argument0.y, argument1.x, argument1.y);
}

function point_direction_vector(argument0, argument1)
{
    var _out = new vector2(argument1.x - argument0.x, argument1.y - argument0.y);
    _out.normalize();
    return _out;
}

function instance_direction(argument0)
{
    var _out = new vector2(argument0.x - x, argument0.y - y);
    _out.normalize();
    return _out;
}

function random_direction()
{
    var _out = random(359);
    return degtovec2(_out);
}

function vector_distance(argument0, argument1)
{
    return point_distance(argument0.x, argument0.y, argument1.x, argument1.y);
}

function manhattan_distance(argument0, argument1)
{
    return abs(argument0.x - argument1.x) + abs(argument0.y - argument1.y);
}

function projectile_angle(argument0, argument1, argument2, argument3, argument4)
{
    argument4 = default_val(argument4, 0);
    var _flip = 0;
    var _delta = argument1.copy();
    
    if (argument0.x > argument1.x)
    {
        _flip = 1;
        _delta.x = argument0.x + (argument0.x - argument1.x);
    }
    
    _delta.subVector(argument0);
    _delta.y = -_delta.y;
    var _sqrtComponent = power(argument2, 4) - (argument3 * ((argument3 * sqr(_delta.x)) + (2 * _delta.y * sqr(argument2))));
    
    if (_sqrtComponent < 0)
        return _flip ? 135 : 45;
    
    var _out = argument4 ? arctan((sqr(argument2) + sqrt(_sqrtComponent)) / (argument3 * _delta.x)) : arctan((sqr(argument2) - sqrt(_sqrtComponent)) / (argument3 * _delta.x));
    _out = radtodeg(_out);
    
    if (_flip)
        _out += ((90 - _out) * 2);
    
    _out = wrap(_out, 0, 359);
    return _out;
}

function intercept_pos(argument0, argument1, argument2, argument3, argument4)
{
    if (argument3 == 0 || argument1 == 0)
        return argument2.copy();
    
    var _aimDir = point_direction_vector(argument0, argument2);
    var _targetVelocity = argument4.copy();
    _targetVelocity.multiply(argument3);
    var _a = dot_product_vectors(_targetVelocity, _targetVelocity) - sqr(argument1);
    var _b = 2 * dot_product_vectors(_targetVelocity, _aimDir);
    var _c = dot_product_vectors(_aimDir, _aimDir);
    var _d = sqr(_b) - (4 * _a * _c);
    
    if (_d < 0)
        return argument2.copy();
    
    var _p = -_b / (2 * _a);
    var _q = sqrt(_d) / (2 * _a);
    var _time1 = _p - _q;
    var _time2 = _p + _q;
    var _time = (_time1 > _time2 && _time2 > 0) ? _time2 : _time1;
    var _aimPos = argument2.copy();
    _targetVelocity.multiply(_time);
    _aimPos.addVector(_targetVelocity);
    return _aimPos;
}
