event_inherited();

for (var i = 0; i < image_xscale; i++)
{
    with (instance_create_layer(x + (i * 4), y, layer, obj_conveyor_platform))
    {
        movement.x = pushAmount;
        
        applyMovement = function()
        {
        };
        
        image_speed = movement.x;
    }
}

instance_destroy();
