instance_activate_all();

if (global.dp_flow_is_active)
{
    if (global.classic_stage)
        global.next_room = 110;
    else if (global.punchball_stage)
        global.next_room = 59;
    
    dp_flow_close();
    room_goto(rm_netplayMenu);
}
else if (global.classic_stage || global.adventure_stage)
{
    room_goto(rm_menu_antonball);
}
else if (global.punchball_stage)
{
    room_goto(rm_menu_punchball);
}
else if (global.vs_stage)
{
    room_goto(rm_menu_vs);
}
