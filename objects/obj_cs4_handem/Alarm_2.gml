if (talk == 0)
{
    talk += 1;
    alarm[2] = 240;
}
else if (talk == 1)
{
    talk += 1;
    instance_create_depth(0, 0, -1000, obj_title_transition_exit_b);
    alarm[3] = 200;
    alarm[4] = 15;
}
