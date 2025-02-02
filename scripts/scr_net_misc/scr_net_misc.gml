function dp_button_check_any(argument0)
{
    var n = dp_get_players();
    
    for (var p = 0; p < n; p++)
    {
        if (dp_button_check(p, argument0))
            return 1;
    }
    
    return 0;
}

function dp_button_pressed_any(argument0)
{
    var n = dp_get_players();
    
    for (var p = 0; p < n; p++)
    {
        if (dp_button_pressed(p, argument0))
            return 1;
    }
    
    return 0;
}
