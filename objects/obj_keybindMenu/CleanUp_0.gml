myPlayerData.keybindMenu = -4;
var _id = 0;

for (var i = 0; i < ds_list_size(global.activePlayers); i++)
{
    if (myPlayerData == ds_list_find_value(global.activePlayers, i))
    {
        _id = i;
        break;
    }
}

var _saveSlot = (myPlayerData.controller_slot == -1) ? 4 : _id;
global.inputKeyData[_saveSlot] = json_stringify(myPlayerData.key_data);
