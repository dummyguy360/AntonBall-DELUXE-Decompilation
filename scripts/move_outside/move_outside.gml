function move_outside(argument0, argument1, argument2)
{
    repeat (argument2)
    {
        if (place_meeting(x, y, argument0))
        {
            x += lengthdir_x(1, argument1);
            y += lengthdir_y(1, argument1);
        }
        else
        {
            exit;
        }
    }
}
