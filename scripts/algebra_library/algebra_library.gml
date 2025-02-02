function add()
{
    var _n = 0;
    
    for (var i = 0; i < argument_count; i++)
        _n += argument[i];
    
    return _n;
}

function wrap(argument0, argument1, argument2)
{
    var _incr = (argument2 - argument1) + 1;
    
    if (argument0 > argument2)
        argument0 = (((argument0 - argument2) % _incr) + argument1) - 1;
    
    if (argument0 < argument1)
        argument0 = ((argument0 - argument1) % _incr) + argument2 + 1;
    
    return argument0;
}

function map(argument0, argument1, argument2, argument3, argument4)
{
    return lerp(argument3, argument4, (argument0 - argument1) / (argument2 - argument1));
}

function select_closest()
{
    var _n = argument[0];
    var _out = argument[1];
    
    for (var i = 2; i < argument_count; i++)
    {
        if (abs(_n - argument[i]) < abs(_n - _out))
            _out = argument[i];
    }
    
    return _out;
}

function wave(argument0, argument1, argument2, argument3, argument4)
{
    argument3 = default_val(argument3, 0);
    argument4 = default_val(argument4, (global.dp_flow_is_active ? global.dp_current_time : current_time) / 1000);
    var _amplitude = (argument1 - argument0) / 2;
    return argument0 + _amplitude + (sin(((argument4 + (argument2 * argument3)) / argument2) * (2 * pi)) * _amplitude);
}

function loop(argument0, argument1, argument2, argument3, argument4)
{
    argument3 = default_val(argument3, 0);
    argument4 = default_val(argument4, (global.dp_flow_is_active ? global.dp_current_time : current_time) / 1000);
    return lerp(argument0, argument1, ((argument4 + argument3) % argument2) / argument2);
}

function remove_frac(argument0)
{
    if (argument0 >= 0)
        return floor(argument0);
    else
        return ceil(argument0);
}

function cutoff(argument0, argument1, argument2)
{
    if (argument0 == clamp(argument0, argument1, argument2))
        return 0;
    
    return argument0;
}

function cantor_pairing(argument0, argument1)
{
    return ((argument0 + argument1) * (argument0 + argument1 + 1) * 0.5) + argument0;
}
