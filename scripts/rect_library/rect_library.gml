function rect(argument0, argument1, argument2, argument3) constructor
{
    x = argument0;
    y = argument1;
    width = argument2;
    height = argument3;
    
    static getCorner = function(argument0)
    {
        var _cornerX = x + (width * (argument0 % 2));
        var _cornerY = y + (height * floor(argument0 / 2));
        return new vector2(_cornerX, _cornerY);
    };
    
    static getCenter = function()
    {
        return new vector2(x + (width / 2), y + (height / 2));
    };
    
    static getRight = function()
    {
        return (x + width) - 1;
    };
    
    static getBottom = function()
    {
        return (y + height) - 1;
    };
    
    static resize = function(argument0, argument1)
    {
        width = argument0;
        height = argument1;
    };
    
    static add = function(argument0)
    {
        width += argument0;
        height += argument0;
    };
    
    static contains = function(argument0, argument1)
    {
        return point_in_rectangle(argument0, argument1, x, y, getRight(), getBottom());
    };
    
    static draw = function(argument0)
    {
        argument0 = default_val(argument0, 0);
        draw_rectangle(x, y, getRight(), getBottom(), argument0);
    };
    
    static containsObject = function(argument0, argument1, argument2)
    {
        argument1 = default_val(argument1, 0);
        argument2 = default_val(argument2, 0);
        return collision_rectangle(x, y, getRight(), getBottom(), argument0, argument1, argument2);
    };
}
