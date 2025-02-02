if (os_type == os_switch && ds_map_find_value(async_load, "event_type") == "gamepad lost")
{
    reassignedSwitchControls = 1;
    switch_controller_support_show();
}
