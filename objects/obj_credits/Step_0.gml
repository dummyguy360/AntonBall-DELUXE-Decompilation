if (alarm[0] > -1)
    exit;

topY -= creditsSpeed;

if (creditsOver)
{
    alarm[0] = 60;
    instance_create_depth(0, 0, depth - 200, obj_transition_fadeoutw);
}

if (obj_menu_input.confirm || obj_menu_input.cancel)
{
    if (alarm[2] > -1)
    {
        creditsOver = 1;
    }
    else
    {
        skipAsk = 1;
        alarm[2] = 120;
    }
}
