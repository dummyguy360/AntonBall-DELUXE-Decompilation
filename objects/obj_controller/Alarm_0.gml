audio_stop_sound(snd_ticking);
global.ballspeed = 2;

for (var i = 0; i < array_length(wavy_effect_layers); i++)
{
    var _layer = layer_get_id(wavy_effect_layers[i]);
    
    if (_layer != -1)
    {
        layer_script_begin(_layer, -1);
        layer_script_end(_layer, -1);
    }
}
