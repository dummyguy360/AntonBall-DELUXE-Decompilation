if (roundMovement)
    movement.roundComponents();

ds_list_clear(standingInstances);
ds_list_clear(collidingInstances);

for (i = 0; i < array_length(affectedObjects); i++)
{
    instance_place_list(x, y - 1, affectedObjects[i], standingInstances, 0);
    instance_place_list(x + movement.x, y + movement.y, affectedObjects[i], collidingInstances, 0);
}

var i = 0;

while (i < ds_list_size(standingInstances))
{
    if (ds_list_find_value(standingInstances, i).bbox_bottom > y || ds_list_find_index(collidingInstances, ds_list_find_value(standingInstances, i)) != -1)
        ds_list_delete(standingInstances, i);
    else
        i++;
}

var _moveInst = function(argument0)
{
    if (!variable_instance_exists(argument0, "currentstate") || (argument0.currentstate != UnknownEnum.Value_3 && argument0.currentstate != UnknownEnum.Value_12))
    {
        argument0.x += movement.x;
        argument0.y += movement.y;
    }
};

for (i = 0; i < ds_list_size(standingInstances); i++)
    _moveInst(ds_list_find_value(standingInstances, i));

for (i = 0; i < ds_list_size(collidingInstances); i++)
    _moveInst(ds_list_find_value(collidingInstances, i));

applyMovement();
