if (exitCharge >= exitDelay)
{
    if (global.dp_flow_is_active)
    {
        dp_flow_close();
        room_goto(rm_netplayMenu);
    }
    else
    {
        room_goto(global.previous_room);
    }
}
else
{
    room_goto(rm_level_select);
}
