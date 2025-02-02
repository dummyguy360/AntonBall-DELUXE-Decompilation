if (global.classic_stage)
{
    if (room != rm_l6)
    {
        alarm[11] = 90;
        instance_create_depth(0, 0, -1000, obj_title_transition_exit);
    }
    else
    {
        alarm[11] = 90;
        instance_create_depth(0, 0, -1000, obj_transition_fadeoutw);
    }
}
else if (global.punchball_stage)
{
    if (room != rm_pb_l6)
    {
        alarm[11] = 90;
        instance_create_depth(0, 0, -1000, obj_title_transition_exit_b);
    }
    else
    {
        alarm[11] = 90;
        instance_create_depth(0, 0, -1000, obj_transition_fadeoutw);
    }
}
