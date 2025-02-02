var _collisionBall = instance_place(x, y, obj_punchball);

if (_collisionBall != -4 && _collisionBall.lethal)
{
    image_speed = 1;
    alarm[0] = resetTime;
}

if (image_speed == 0)
{
    if (alarm[0] > -1)
    {
        image_index = ceil(map(alarm[0], 0, resetTime, 0, image_number - 1));
        
        if (global.win)
            alarm[0] += 1;
    }
    else
    {
        image_index = 0;
    }
}
