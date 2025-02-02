if (currentstate == UnknownEnum.Value_3 && vsp > 1)
{
    if (!global.bonus_stage)
        obj_controller.playerdead = 1;
    
    if (global.classic_stage)
        instance_destroy(obj_player);
    else
        instance_destroy(self);
}
