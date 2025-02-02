var _moveKey;

try
{
    _moveKey = sfmt("% OR %", input_constant_to_string(keyData.up_button), input_constant_to_string(keyData.down_button));
}
catch (_e)
{
    _moveKey = "UP OR DOWN ON THE LEFT STICK OR D-PAD";
}

drawString = sfmt("HOLD % TO CHANGE THE BALL'S TRAJECTORY!", _moveKey);
