standingInstances = ds_list_create();
collidingInstances = ds_list_create();
affectedObjects = [138, 10, 142];
movement = new vector2();
roundMovement = 1;

applyMovement = function()
{
    x += movement.x;
    y += movement.y;
};
