function add_score(argument0, argument1)
{
    if (argument1 > 0)
    {
        array_push(argument0, argument1);
        array_sort(argument0, 0);
        
        if (array_length(argument0) > 10)
            array_resize(argument0, 10);
    }
    
    return argument0;
}

function get_score_string(argument0)
{
    var _scoreString = "TOP SCORES: ";
    
    if (array_length(argument0) < 1)
    {
        _scoreString += "NONE!";
    }
    else
    {
        for (var i = 0; i < array_length(argument0); i++)
        {
            _scoreString += string(argument0[i]);
            
            if (i < (array_length(argument0) - 1))
                _scoreString += " - ";
        }
    }
    
    return _scoreString;
}
