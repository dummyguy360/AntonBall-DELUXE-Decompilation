for (var i = 0; i < array_length(scoreCallbacks); i++)
{
    if (ds_map_find_value(async_load, "id") == scoreCallbacks[i])
    {
        var _entriesMap = json_decode(ds_map_find_value(async_load, "entries"));
        var _entriesList = ds_map_find_value(_entriesMap, "entries");
        var _len = ds_list_size(_entriesList);
        var _scoresArray = array_create(_len);
        
        for (var j = 0; j < _len; j++)
        {
            var _entryMap = ds_list_find_value(_entriesList, j);
            _scoresArray[j] = 
            {
                name: argument[0],
                myScore: argument[1],
                rank: argument[2]
            };
        }
        
        if (array_length(_scoresArray) > scoreCount)
            array_resize(_scoresArray, scoreCount);
        
        scores[i] = _scoresArray;
        ds_map_destroy(_entriesMap);
        exit;
    }
}
