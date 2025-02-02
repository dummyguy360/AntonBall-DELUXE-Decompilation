if (ds_list_size(standingInstances) > 0)
    fallTimer -= 1;
else
    fallTimer = fallTime;

if ((fallTimer <= 0 || y != originalY) && alarm[0] == -1)
{
    movement.y = fallSpeed;
    instance_deactivate_object(self);
    
    if (place_meeting(x, y + movement.y, obj_block) || place_meeting(x, y + movement.y, obj_player) || (bbox_top + movement.y) > room_height)
    {
        sprite_index = -1;
        alarm[0] = respawnTime;
    }
    
    instance_activate_object(self);
}

event_inherited();
