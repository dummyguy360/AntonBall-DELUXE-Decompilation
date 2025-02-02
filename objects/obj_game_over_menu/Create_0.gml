menu = cmn_menu_create(game_over_menu);

on_select = function()
{
    instance_create_depth(0, 0, -1000, obj_transition_fadeoutw);
    obj_controller.alarm[8] = 90;
    instance_destroy();
};
