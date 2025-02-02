global.__dp_handle_state_poll_tmp = {};

function dp_handle_state_poll(argument0, argument1)
{
    if (global.dp_active_player_index < 0)
        exit;
    
    if (global.dp_active_player_index >= ds_list_size(global.activePlayers))
        exit;
    
    if (global.cmn_chat_is_open)
        exit;
    
    var _tmp = global.__dp_handle_state_poll_tmp;
    
    with (_tmp)
        player_input(ds_list_find_value(global.activePlayers, global.dp_active_player_index), 1);
    
    dp_state_set_button(argument0, UnknownEnum.Value_0, _tmp.left);
    dp_state_set_button(argument0, UnknownEnum.Value_1, _tmp.right);
    dp_state_set_button(argument0, UnknownEnum.Value_2, _tmp.up);
    dp_state_set_button(argument0, UnknownEnum.Value_3, _tmp.down);
    dp_state_set_button(argument0, UnknownEnum.Value_4, _tmp.attack_held);
    dp_state_set_button(argument0, UnknownEnum.Value_5, _tmp.key_jump_held);
    dp_state_set_button(argument0, UnknownEnum.Value_6, _tmp.bumper_l);
    dp_state_set_button(argument0, UnknownEnum.Value_7, _tmp.bumper_r);
    dp_state_set_button(argument0, UnknownEnum.Value_8, _tmp.key_attack);
    dp_state_set_button(argument0, UnknownEnum.Value_9, _tmp.start);
    dp_state_set_button(argument0, UnknownEnum.Value_10, _tmp.select);
    dp_state_set_button(argument0, UnknownEnum.Value_11, _tmp.menu_confirm);
    dp_state_set_button(argument0, UnknownEnum.Value_12, _tmp.menu_cancel);
    dp_state_set_button(argument0, UnknownEnum.Value_13, _tmp.menu_leave);
    dp_state_set_button(argument0, UnknownEnum.Value_14, _tmp.menu_select);
    dp_state_set_button(argument0, UnknownEnum.Value_15, _tmp.menu_up);
    dp_state_set_button(argument0, UnknownEnum.Value_16, _tmp.menu_left);
    dp_state_set_button(argument0, UnknownEnum.Value_17, _tmp.menu_down);
    dp_state_set_button(argument0, UnknownEnum.Value_18, _tmp.menu_right);
}
