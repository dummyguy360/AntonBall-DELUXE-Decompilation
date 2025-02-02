event_inherited();
actionTimer -= 1;

if (bananaThrown)
{
    if (actionTimer <= idleTime)
    {
        sprite_index = spr_monkey_up;
        image_speed = 1;
        
        if (image_index >= (image_number - 1))
            instance_destroy();
    }
}
else
{
    if (image_index >= (image_number - 1))
    {
        sprite_index = spr_monkey;
        image_speed = 0;
        image_index = 0;
    }
    
    if (actionTimer <= 0)
    {
        instance_create_depth(x, y, depth, obj_banana);
        bananaThrown = 1;
        actionTimer = idleTime;
        image_index = 1;
    }
}
