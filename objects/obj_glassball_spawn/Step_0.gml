if (!instance_exists(obj_glassball) && !place_meeting(x, y, obj_player))
    instance_create_layer(x, y, layer, obj_glassball);
