if (global.dp_flow_is_active)
{
    if (os_type == os_switch)
    {
        confirm = dp_button_pressed_any(UnknownEnum.Value_4) || dp_button_pressed_any(UnknownEnum.Value_9);
        cancel = dp_button_pressed_any(UnknownEnum.Value_5);
        cancelHeld = dp_button_check_any(UnknownEnum.Value_5);
    }
    else
    {
        confirm = dp_button_pressed_any(UnknownEnum.Value_5) || dp_button_pressed_any(UnknownEnum.Value_9);
        cancel = dp_button_pressed_any(UnknownEnum.Value_4);
        cancelHeld = dp_button_check_any(UnknownEnum.Value_4);
    }
    
    controllerConfig = dp_button_check_any(UnknownEnum.Value_6) && dp_button_check_any(UnknownEnum.Value_7);
    horizontalDirection = dp_button_pressed_any(UnknownEnum.Value_1) - dp_button_pressed_any(UnknownEnum.Value_0);
    verticalDirection = dp_button_pressed_any(UnknownEnum.Value_3) - dp_button_pressed_any(UnknownEnum.Value_2);
    exit;
}

if (global.cmn_chat_is_open)
{
    confirm = 0;
    cancel = 0;
    controllerConfig = 0;
    horizontalDirection = 0;
    verticalDirection = 0;
    exit;
}

var _down = 0;
var _up = 0;
var _left = 0;
var _right = 0;
var _switchReassignIndex = 0;
var _playerSpawnIndex = undefined;
var _assignedControllers = ds_map_create();

for (var i = 0; i < ds_list_size(global.activePlayers); i++)
    ds_map_set(_assignedControllers, ds_list_find_value(global.activePlayers, i).controller_slot, 1);

confirm = 0;
cancel = 0;
cancelHeld = 0;
controllerConfig = 0;
gamepadConnected = 0;

for (var i = 0; i < 12; i++)
{
    if (gamepad_is_connected(i))
    {
        gamepadConnected = 1;
        
        if (reassignedSwitchControls && _switchReassignIndex < ds_list_size(global.activePlayers))
        {
            ds_list_find_value(global.activePlayers, _switchReassignIndex).controller_slot = i;
            _switchReassignIndex++;
        }
        
        var _axisXVal = gamepad_axis_value(i, gp_axislh);
        var _axisYVal = gamepad_axis_value(i, gp_axislv);
        _left = _left || gamepad_button_check_pressed(i, gp_padl) || (_axisXVal < -0.3 && lastXAxis[i] > -0.3);
        _right = _right || gamepad_button_check_pressed(i, gp_padr) || (_axisXVal > 0.3 && lastXAxis[i] < 0.3);
        _up = _up || gamepad_button_check_pressed(i, gp_padu) || (_axisYVal < -0.3 && lastYAxis[i] > -0.3);
        _down = _down || gamepad_button_check_pressed(i, gp_padd) || (_axisYVal > 0.3 && lastYAxis[i] < 0.3);
        
        if (os_type == os_switch)
        {
            confirm = confirm || gamepad_button_check_pressed(i, gp_face2) || gamepad_button_check_pressed(i, gp_start);
            cancel = cancel || gamepad_button_check_pressed(i, gp_face1);
            cancelHeld = cancelHeld || gamepad_button_check(i, gp_face1);
        }
        else
        {
            confirm = confirm || gamepad_button_check_pressed(i, gp_face1) || gamepad_button_check_pressed(i, gp_start);
            cancel = cancel || gamepad_button_check_pressed(i, gp_face2) || gamepad_button_check_pressed(i, gp_select);
            cancelHeld = cancelHeld || gamepad_button_check(i, gp_face2);
        }
        
        controllerConfig = controllerConfig || (gamepad_button_check(i, gp_shoulderlb) && gamepad_button_check(i, gp_shoulderrb));
        
        if (is_undefined(_playerSpawnIndex) && gamepad_button_check(i, gp_shoulderrb) && gamepad_button_check(i, gp_shoulderlb) && !ds_map_exists(_assignedControllers, i))
            _playerSpawnIndex = i;
    }
}

_left = _left || keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
_right = _right || keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
_up = _up || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
_down = _down || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
confirm = confirm || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("K")) || keyboard_check_pressed(ord("Z"));
cancel = cancel || keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("J")) || keyboard_check_pressed(ord("X"));
cancelHeld = cancelHeld || keyboard_check(vk_shift) || keyboard_check(ord("J")) || keyboard_check(ord("X"));
controllerConfig = controllerConfig || keyboard_check(ord("H"));

if (is_undefined(_playerSpawnIndex) && keyboard_check(ord("U")) && keyboard_check(ord("I")) && !ds_map_exists(_assignedControllers, -1))
    _playerSpawnIndex = -1;

horizontalDirection = _right - _left;
verticalDirection = _down - _up;
reassignedSwitchControls = 0;
ds_map_destroy(_assignedControllers);
