function frames_to_timer(argument0)
{
    static format = function(argument0)
    {
        return string_replace(string_format(argument0, 2, 0), " ", "0");
    };
    
    argument0 = floor(argument0 / 60);
    return sfmt("%:%", format(floor(argument0 / 60)), format(argument0 % 60));
}
