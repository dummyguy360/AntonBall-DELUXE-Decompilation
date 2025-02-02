audio_stop_all();

if (global.dp_flow_is_active)
{
    show_debug_message("RETURNING TO LOBBY");
    dp_flow_close();
    room_goto(rm_netplayMenu);
}
else
{
    room_goto(rm_menu_vs);
}
