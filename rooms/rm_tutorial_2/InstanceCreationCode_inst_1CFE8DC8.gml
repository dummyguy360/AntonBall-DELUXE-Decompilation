var _downKey;

try
{
    _downKey = input_constant_to_string(keyData.down_button);
}
catch (_e)
{
    _downKey = "DOWN ON THE LEFT STICK OR D-PAD";
}

drawString = sfmt("HOLD % AND PRESS % TO BACKFLIP!", _downKey, input_constant_to_string(keyData.jump_button));
