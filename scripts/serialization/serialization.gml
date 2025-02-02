function save_game_data()
{
    var _saveData = ds_map_create();
    
    var _saveArray = function(argument0, argument1, argument2)
    {
        for (var i = 0; i < array_length(argument2); i++)
        {
            if (!is_undefined(argument2[i]))
                ds_map_set(argument0, argument1 + string(i), argument2[i]);
            else
                ds_map_set(argument0, argument1 + string(i), "undefined");
        }
    };
    
    ds_map_set(_saveData, "currency", global.currency);
    _saveArray(_saveData, "unlocks", global.unlocks);
    _saveArray(_saveData, "keybinds", global.inputKeyData);
    ds_map_set(_saveData, "scores", json_stringify(global.scores));
    ds_map_set(_saveData, "options", json_stringify(global.options));
    return _saveData;
}

function load_game_data()
{
    if (file_exists("antonball_save_data.sav"))
    {
        var _loadData = ds_map_secure_load("antonball_save_data.sav");
        
        var _loadArray = function(argument0, argument1)
        {
            var _out = [];
            var i = 0;
            var _key = argument1 + "0";
            
            while (ds_map_exists(argument0, _key))
            {
                _out[i] = ds_map_find_value(argument0, _key);
                
                if (_out[i] == "undefined")
                    _out[i] = undefined;
                
                i++;
                _key = argument1 + string(i);
            }
            
            return _out;
        };
        
        global.currency = ds_map_find_value(_loadData, "currency");
        var _unlocks = _loadArray(_loadData, "unlocks");
        
        if (array_length(_unlocks) == UnknownEnum.Value_50)
        {
            global.unlocks = _unlocks;
        }
        else
        {
            for (var i = 0; i < array_length(_unlocks); i++)
                global.unlocks[i] = _unlocks[i];
        }
        
        global.inputKeyData = _loadArray(_loadData, "keybinds");
        
        if (ds_map_exists(_loadData, "scores"))
            global.scores = json_parse(ds_map_find_value(_loadData, "scores"));
        
        var _options;
        
        if (ds_map_exists(_loadData, "options"))
            _options = json_parse(ds_map_find_value(_loadData, "options"));
        
        if (variable_struct_names_count(_options) == variable_struct_names_count(global.options))
        {
            global.options = _options;
        }
        else
        {
            var _optionNames = variable_struct_get_names(_options);
            
            for (var i = 0; i < array_length(_optionNames); i++)
                variable_struct_set(global.options, array_get(_optionNames, i), variable_struct_get(_options, array_get(_optionNames, i)));
        }
        
        ds_map_destroy(_loadData);
    }
}

function save_begin()
{
    var _saveMap = save_game_data();
    ds_map_secure_save(_saveMap, "antonball_save_data.sav");
    
    if (os_type == os_switch)
        var _saved = switch_save_data_commit();
    
    ds_map_destroy(_saveMap);
}

function load_begin()
{
    load_game_data();
}

function initialize_serialized_values()
{
    global.inputKeyData = [undefined, undefined, undefined, undefined, undefined];
    unlocks_init();
    global.currency = false ? 999999 : 0;
    global.scores = 
    {
        arcade: argument[0],
        punchball: argument[1]
    };
    global.options = 
    {
        screenScale: 4,
        screenShake: 1,
        ballTrails: 1,
        retroFilter: "GAME BALL ADVANCE"
    };
}
