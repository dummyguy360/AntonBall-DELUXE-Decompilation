var _moveKey;

try
{
    _moveKey = sfmt("% AND %", input_constant_to_string(keyData.left_button), input_constant_to_string(keyData.right_button));
}
catch (_e)
{
    _moveKey = "THE LEFT STICK OR THE D-PAD";
}

drawString = sfmt("USE % TO MOVE, PRESS % TO JUMP!", _moveKey, input_constant_to_string(keyData.jump_button));
