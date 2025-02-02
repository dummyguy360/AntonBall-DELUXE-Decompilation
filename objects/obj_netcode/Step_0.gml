dp_event_update();

if (global.dp_steam_is_active && global.dp_lobby_is_active && !global.dp_flow_is_active && dp_get_is_server())
    steam_lobby_set_data("game_mode", string(global.dp_lobby_game_mode));

canOpen = global.dp_lobby_is_active;
var s = cmn_chat_update(canOpen && keyboard_check_pressed(ord("T")));

if (s != "")
{
    if (global.dp_flow_is_active)
        dp_text_send(s);
    else if (global.dp_lobby_is_active)
        dp_lobby_send_message(s);
}
