function loop_through_colors(argument0)
{
    var _colors = [];
    
    for (var i = 1; i < argument_count; i++)
        _colors[i - 1] = argument[i];
    
    var _colorIndex1 = loop(0, array_length(_colors) - 0.001, argument0);
    var _mergeAmount = frac(_colorIndex1);
    _colorIndex1 = floor(_colorIndex1);
    var _colorIndex2 = wrap(_colorIndex1 + 1, 0, array_length(_colors) - 1);
    return merge_color(_colors[_colorIndex1], _colors[_colorIndex2], _mergeAmount);
}
