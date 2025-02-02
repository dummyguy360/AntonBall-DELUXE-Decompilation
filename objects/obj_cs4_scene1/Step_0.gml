var _layerY = layer_get_y(assetLayer);

if (time > 90)
{
    var _oldY = _layerY;
    
    if (_layerY > ((bottomY / 2) - 1))
    {
        if (_layerY == 0)
            _layerY = -lerpSpeed;
        else
            _layerY *= (1 + lerpSpeed);
    }
    else
    {
        _layerY = lerp(_layerY, bottomY, lerpSpeed);
    }
    
    layer_y(assetLayer, _layerY);
    y -= (abs(_layerY - _oldY) + riseSpeed);
}

if (time == 420)
    obj_cutscene_skipper.alarm[2] = 1;

time += 1;
