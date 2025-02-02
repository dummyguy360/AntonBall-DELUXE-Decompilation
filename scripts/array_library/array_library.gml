function array_append(argument0, argument1, argument2)
{
    argument2 = default_val(argument2, 1);
    
    if (is_array(argument1) && argument2)
    {
        for (var i = 0; i < array_length(argument1); i++)
            argument0[array_length(argument0)] = argument1[i];
    }
    else
    {
        argument0[array_length(argument0)] = argument1;
    }
    
    return argument0;
}

function array_choose_random(argument0)
{
    return argument0[irandom(array_length(argument0) - 1)];
}

function array_get_last(argument0, argument1)
{
    if (!is_array(argument0))
        return argument0;
    
    if (is_undefined(argument1))
        return argument0[array_length(argument0) - 1];
    
    return argument0[min(argument1, array_length(argument0) - 1)];
}

function array_append_missing(argument0, argument1)
{
    var _targetValuesMap = ds_map_create();
    
    for (var i = 0; i < array_length(argument0); i++)
        ds_map_add(_targetValuesMap, argument0[i], 1);
    
    for (var i = 0; i < array_length(argument1); i++)
    {
        if (!ds_map_exists(_targetValuesMap, argument1[i]))
        {
            ds_map_add(_targetValuesMap, argument1[i], 1);
            argument0 = array_append(argument0, argument1[i]);
        }
    }
    
    ds_map_destroy(_targetValuesMap);
    return argument0;
}

function array_find(argument0, argument1)
{
    for (var i = 0; i < array_length(argument0); i++)
    {
        if (argument0[i] == argument1)
            return i;
    }
    
    return -1;
}

function array_contains(argument0, argument1)
{
    for (var i = 0; i < array_length(argument0); i++)
    {
        if (argument0[i] == argument1)
            return 1;
    }
    
    return 0;
}
