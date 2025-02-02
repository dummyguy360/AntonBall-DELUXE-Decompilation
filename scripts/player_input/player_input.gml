function player_input(argument0, argument1 = 0)
{
    if (is_undefined(argument0))
        exit;
    
    if (global.dp_flow_is_active && !argument1)
    {
        var _net_index = argument0.net_index;
        var dx = dp_button_check(_net_index, UnknownEnum.Value_1) - dp_button_check(_net_index, UnknownEnum.Value_0);
        left = dx < 0;
        left_pressed = dp_button_pressed(_net_index, UnknownEnum.Value_0);
        right = dx > 0;
        right_pressed = dp_button_pressed(_net_index, UnknownEnum.Value_1);
        up = dp_button_check(_net_index, UnknownEnum.Value_2);
        up_pressed = dp_button_pressed(_net_index, UnknownEnum.Value_2);
        down = dp_button_check(_net_index, UnknownEnum.Value_3);
        down_pressed = dp_button_pressed(_net_index, UnknownEnum.Value_3);
        attack = dp_button_pressed(_net_index, UnknownEnum.Value_4);
        attack_held = dp_button_check(_net_index, UnknownEnum.Value_4);
        key_jump = dp_button_pressed(_net_index, UnknownEnum.Value_5);
        key_jump_held = dp_button_check(_net_index, UnknownEnum.Value_5);
        bumper_l = dp_button_check(_net_index, UnknownEnum.Value_6);
        bumper_r = dp_button_check(_net_index, UnknownEnum.Value_7);
        key_attack = dp_button_pressed(_net_index, UnknownEnum.Value_8);
        start = dp_button_pressed(_net_index, UnknownEnum.Value_9);
        select = dp_button_check(_net_index, UnknownEnum.Value_10);
        menu_confirm = dp_button_pressed(_net_index, UnknownEnum.Value_11);
        menu_cancel = dp_button_pressed(_net_index, UnknownEnum.Value_12);
        menu_leave = dp_button_pressed(_net_index, UnknownEnum.Value_13);
        menu_select = dp_button_pressed(_net_index, UnknownEnum.Value_14);
        menu_up = dp_button_pressed(_net_index, UnknownEnum.Value_15);
        menu_left = dp_button_pressed(_net_index, UnknownEnum.Value_16);
        menu_down = dp_button_pressed(_net_index, UnknownEnum.Value_17);
        menu_right = dp_button_pressed(_net_index, UnknownEnum.Value_18);
        exit;
    }
    
    var _slot = argument0.controller_slot;
    var _inputKeyData = argument0.key_data;
    
    if (_slot == -1)
    {
        left = keyboard_check(_inputKeyData.left_button) && !keyboard_check(_inputKeyData.right_button);
        left_pressed = keyboard_check_pressed(_inputKeyData.left_button);
        right = keyboard_check(_inputKeyData.right_button) && !keyboard_check(_inputKeyData.left_button);
        right_pressed = keyboard_check_pressed(_inputKeyData.right_button);
        up = keyboard_check(_inputKeyData.up_button);
        up_pressed = keyboard_check_pressed(_inputKeyData.up_button);
        down = keyboard_check(_inputKeyData.down_button);
        down_pressed = keyboard_check_pressed(_inputKeyData.down_button);
        attack = keyboard_check_pressed(_inputKeyData.attack_button);
        attack_held = keyboard_check(_inputKeyData.attack_button);
        key_jump = keyboard_check_pressed(_inputKeyData.jump_button);
        key_jump_held = keyboard_check(_inputKeyData.jump_button);
        bumper_l = keyboard_check(_inputKeyData.bumper_l_button);
        bumper_r = keyboard_check(_inputKeyData.bumper_r_button);
        key_attack = keyboard_check_pressed(_inputKeyData.grab_button);
        start = keyboard_check_pressed(_inputKeyData.start_button);
        select = keyboard_check_pressed(_inputKeyData.select_button);
        menu_confirm = keyboard_check_pressed(ord("K")) || keyboard_check_pressed(vk_enter);
        menu_cancel = keyboard_check_pressed(ord("J"));
        menu_leave = keyboard_check_pressed(ord("H"));
        menu_select = keyboard_check_pressed(vk_shift);
        menu_up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
        menu_left = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
        menu_down = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
        menu_right = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
    }
    else if (gamepad_is_connected(_slot))
    {
        left = gamepad_button_check(_slot, gp_padl) || gamepad_axis_value(_slot, gp_axislh) < -0.3;
        left_pressed = gamepad_button_check_pressed(_slot, gp_padl) || (gamepad_axis_value(_slot, gp_axislh) < -0.3 && obj_menu_input.lastXAxis[_slot] > -0.3);
        right = gamepad_button_check(_slot, gp_padr) || gamepad_axis_value(_slot, gp_axislh) > 0.3;
        right_pressed = gamepad_button_check_pressed(_slot, gp_padr) || (gamepad_axis_value(_slot, gp_axislh) > 0.3 && obj_menu_input.lastXAxis[_slot] < 0.3);
        up = gamepad_button_check(_slot, gp_padu) || gamepad_axis_value(_slot, gp_axislv) < -0.3;
        up_pressed = gamepad_button_check_pressed(_slot, gp_padu) || (gamepad_axis_value(_slot, gp_axislv) < -0.3 && obj_menu_input.lastYAxis[_slot] > -0.3);
        down = gamepad_button_check(_slot, gp_padd) || gamepad_axis_value(_slot, gp_axislv) > 0.3;
        down_pressed = gamepad_button_check_pressed(_slot, gp_padd) || (gamepad_axis_value(_slot, gp_axislv) > 0.3 && obj_menu_input.lastYAxis[_slot] < 0.3);
        key_jump = gamepad_button_check_pressed(_slot, _inputKeyData.jump_button);
        key_jump_held = gamepad_button_check(_slot, _inputKeyData.jump_button);
        attack = gamepad_button_check_pressed(_slot, _inputKeyData.attack_button);
        attack_held = gamepad_button_check(_slot, _inputKeyData.attack_button);
        bumper_l = gamepad_button_check(_slot, _inputKeyData.bumper_l_button);
        bumper_r = gamepad_button_check(_slot, _inputKeyData.bumper_r_button);
        key_attack = gamepad_button_check_pressed(_slot, _inputKeyData.grab_button);
        start = gamepad_button_check_pressed(_slot, _inputKeyData.start_button);
        select = gamepad_button_check_pressed(_slot, _inputKeyData.select_button);
        menu_confirm = gamepad_button_check_pressed(_slot, (os_type == os_switch) ? gp_face2 : gp_face1) || gamepad_button_check_pressed(_slot, gp_start);
        menu_cancel = gamepad_button_check_pressed(_slot, (os_type == os_switch) ? gp_face1 : gp_face2);
        menu_leave = gamepad_button_check_pressed(_slot, gp_face3);
        menu_select = gamepad_button_check_pressed(_slot, gp_select);
        menu_up = up_pressed;
        menu_left = left_pressed;
        menu_down = down_pressed;
        menu_right = right_pressed;
    }
}
