if (room == rm_menu_punchball)
{
    var _names = variable_instance_get_names(-5);
    
    if (ds_map_size(globalMap) == 0)
    {
        for (var i = 0; i < array_length(_names); i++)
            ds_map_set(globalMap, array_get(_names, i), variable_global_get(_names[i]));
    }
    else
    {
        var _sortedNames = ds_list_create();
        
        for (var i = 0; i < array_length(_names); i++)
            ds_list_add(_sortedNames, _names[i]);
        
        ds_list_sort(_sortedNames, 1);
        
        for (var i = 0; i < ds_list_size(_sortedNames); i++)
        {
            var _oldValue = "undefined";
            
            if (ds_map_exists(globalMap, ds_list_find_value(_sortedNames, i)))
                _oldValue = ds_map_find_value(globalMap, ds_list_find_value(_sortedNames, i));
            
            var _newValue = variable_global_get(ds_list_find_value(_sortedNames, i));
            
            if (_oldValue != _newValue)
                show_debug_message("Mismatch found with variable " + ds_list_find_value(_sortedNames, i) + ", old value: " + string(_oldValue) + ", new value: " + string(_newValue));
        }
        
        ds_list_destroy(_sortedNames);
    }
}
