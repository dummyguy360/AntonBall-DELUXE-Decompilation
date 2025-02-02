function default_val(argument0, argument1)
{
    return is_undefined(argument0) ? argument1 : argument0;
}

function function_execute(_func, _array)
{
	// ah hell naw
	// no way this also exists here
	// and its WORSE THAN PIZZA TOWER'S!!!
	
    _array = default_val(_array, []);
    
    if (is_method(_func))
    {
        switch (array_length(_array))
        {
            case 1:
                return _func(_array[0]);
            
            case 2:
                return _func(_array[0], _array[1]);
            
            case 3:
                return _func(_array[0], _array[1], _array[2]);
            
            case 4:
                return _func(_array[0], _array[1], _array[2], _array[3]);
            
            case 5:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4]);
            
            case 6:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5]);
            
            case 7:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6]);
            
            case 8:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7]);
            
            case 9:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8]);
            
            case 10:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9]);
            
            case 11:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10]);
            
            case 12:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10], _array[11]);
            
            case 13:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10], _array[11], _array[12]);
            
            case 14:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10], _array[11], _array[12], _array[13]);
            
            case 15:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10], _array[11], _array[12], _array[13], _array[14]);
            
            case 16:
                return _func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10], _array[11], _array[12], _array[13], _array[14], _array[15]);
            
            default:
                return _func();
        }
    }
    
    switch (array_length(_array))
    {
        case 1:
            return script_execute(_func, _array[0]);
        
        case 2:
            return script_execute(_func, _array[0], _array[1]);
        
        case 3:
            return script_execute(_func, _array[0], _array[1], _array[2]);
        
        case 4:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3]);
        
        case 5:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4]);
        
        case 6:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5]);
        
        case 7:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6]);
        
        case 8:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7]);
        
        case 9:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8]);
        
        case 10:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9]);
        
        case 11:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10]);
        
        case 12:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10], _array[11]);
        
        case 13:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10], _array[11], _array[12]);
        
        case 14:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10], _array[11], _array[12], _array[13]);
        
        case 15:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10], _array[11], _array[12], _array[13], _array[14]);
        
        case 16:
            return script_execute(_func, _array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6], _array[7], _array[8], _array[9], _array[10], _array[11], _array[12], _array[13], _array[14], _array[15]);
        
        default:
            return script_execute(_func);
    }
}

function inherit_method(argument0, argument1)
{
    var _parentMethod = variable_instance_get(id, argument0);
    var _inheritanceData = method_get_self(_parentMethod);
    
    if (_inheritanceData == id)
    {
        _inheritanceData = new method_inheritance_data(_parentMethod, argument1);
        variable_instance_set(id, argument0, _inheritanceData.childWrapper);
    }
    else
    {
        array_push(_inheritanceData.methods, argument1);
    }
}

function method_inherited(argument0)
{
    with (method_get_self(argument0))
    {
        currentIndex -= 1;
        return function_execute(methods[currentIndex], currentArguments);
    }
}

function method_inheritance_data(argument0, argument1) constructor
{
    methods = [argument0, argument1];
    currentArguments = [];
    currentIndex = 0;
    
    childWrapper = function()
    {
        currentIndex = array_length(methods) - 1;
        
        for (var i = 0; i < argument_count; i++)
            currentArguments[i] = argument[i];
        
        return function_execute(methods[currentIndex], currentArguments);
    };
}
