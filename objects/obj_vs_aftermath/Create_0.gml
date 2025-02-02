menu = cmn_menu_create(scr_vs_aftermath_menu);
selected = 0;
menuActive = 0;
drawOffset = room_height;

quit = function()
{
    selected = 1;
    instance_create_depth(0, 0, -1000, obj_title_transition_exit);
    alarm[2] = 120;
};
