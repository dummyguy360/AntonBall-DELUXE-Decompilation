for (var i = 0; i < 12; i++)
{
    if (gamepad_is_connected(i))
    {
        lastXAxis[i] = gamepad_axis_value(i, gp_axislh);
        lastYAxis[i] = gamepad_axis_value(i, gp_axislv);
    }
}
