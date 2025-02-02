function struct_to_json(argument0)
{
    var _keybindData = ds_map_create();
    var _keys = variable_struct_get_names(argument0);
    
    for (var i = 0; i < array_length(_keys); i++)
    {
        var _val = variable_struct_get(argument0, _keys[i]);
        ds_map_add(_keybindData, _keys[i], _val);
    }
    
    var _out = json_encode(_keybindData);
    ds_map_destroy(_keybindData);
    return _out;
}

function json_to_struct(argument0)
{
    var _keybindData = json_decode(argument0);
    var _key = ds_map_find_first(_keybindData);
    var _out = {};
    
    repeat (ds_map_size(_keybindData))
    {
        variable_struct_set(_out, _key, ds_map_find_value(_keybindData, _key));
        _key = ds_map_find_next(_keybindData, _key);
    }
    
    ds_map_destroy(_keybindData);
    return _out;
}
