if (obj_menu_input.confirm && !skip)
{
    if (!ask)
    {
        ask = 1;
        alarm[1] = 120;
    }
    else if (ask)
    {
        event_perform(ev_alarm, 3);
    }
}
