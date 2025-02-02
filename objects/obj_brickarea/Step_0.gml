if (instance_place(x, y, obj_player))
    activated = 1;
else
    activated = 0;

if (instance_place(x, y, obj_player))
{
    bricksinarea = 1;
    image_index = 1;
}
else
{
    bricksinarea = 0;
    image_index = 0;
}
