gameover = 1;

if (global.dp_flow_is_active && global.next_room != room)
{
    dp_flow_close();
    room_goto(rm_netplayMenu);
}
else
{
    room_goto(global.next_room);
}
