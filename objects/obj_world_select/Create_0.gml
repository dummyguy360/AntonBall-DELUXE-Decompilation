itemUnlocked = function(argument0)
{
    return is_undefined(argument0.myUnlockIndex) || unlocks[argument0.myUnlockIndex];
};

var _menuItem = function(argument0, argument1, argument2, argument3) constructor
{
    name = argument0;
    sprite = argument1;
    myUnlockIndex = argument2;
    myRoom = argument3;
};

arcade = 0;
punchball = 0;
vs = 0;
var _menuData;

if (global.next_room == 101)
{
    arcade = 1;
    _menuData = [new _menuItem("BOILER SEWERS", 661, undefined, 101), new _menuItem("JAM JUNGLE", 720, UnknownEnum.Value_28, 81), new _menuItem("FUDGE MOUNTAIN", 953, UnknownEnum.Value_29, 25), new _menuItem("BRICK FACTORY", 17, UnknownEnum.Value_30, 86), new _menuItem("FUNNY", 739), new _menuItem("BOILER CITY", 595, UnknownEnum.Value_31, 17)];
}
else if (global.next_room == 56)
{
    punchball = 1;
    _menuData = [new _menuItem("BOILER SEWERS", 933, undefined, 56), new _menuItem("JAM JUNGLE", 244, UnknownEnum.Value_32, 67), new _menuItem("FUDGE MOUNTAIN", 837, UnknownEnum.Value_33, 10), new _menuItem("BRICK FACTORY", 929, UnknownEnum.Value_34, 38), new _menuItem("FUNNY", 739), new _menuItem("BOILER CITY", 906, UnknownEnum.Value_35, 80)];
}
else if (global.next_room == 13)
{
    vs = 1;
    _menuData = [new _menuItem("SEWER SLAM", 661, undefined, 122), new _menuItem("JUNGLE JAM", 720, UnknownEnum.Value_20, 15), new _menuItem("ANTONTICA", 953, UnknownEnum.Value_21, 45), new _menuItem("MORTAR MAYHEM", 17, UnknownEnum.Value_22, 44), new _menuItem("BOILER BASH", 595, UnknownEnum.Value_23, 72), new _menuItem("BALLOSSEUM", 621, UnknownEnum.Value_25, 57), new _menuItem("BEACH BRAWL", 85, UnknownEnum.Value_24, 48), new _menuItem("DEVILLED GARDEN", 457, UnknownEnum.Value_26, 71)];
}

menuData = [];
itemCount = array_length(_menuData);
gridHeight = 2;
gridWidth = ceil(itemCount / gridHeight);
lastLineCount = itemCount - (gridWidth * (gridHeight - 1));
var k = 0;

for (var i = 0; i < gridHeight; i++)
{
    for (var j = 0; j < gridWidth; j++)
    {
        if (k < array_length(_menuData))
        {
            menuData[i][j] = _menuData[k];
            k++;
        }
        else
        {
            menuData[i][j] = undefined;
        }
    }
}

selection = new vector2();
exitDelay = 40;
exitCharge = 0;
itemDrawOffset = new vector2(4, 16);
itemDrawRect = new rect(0, 0, sprite_get_width(spr_sewer), sprite_get_height(spr_sewer));
funnyIndex = irandom_range(1, sprite_get_number(spr_funny) - 1);
unlocks = [];
array_copy(unlocks, 0, global.unlocks, 0, array_length(global.unlocks));

if (global.dp_flow_is_active)
{
    for (var i = 0; i < ds_list_size(global.activePlayers); i++)
    {
        var _playerUnlocks = ds_list_find_value(global.activePlayers, i).unlocks;
        
        for (var j = 0; j < array_length(_playerUnlocks); j++)
        {
            if (_playerUnlocks[j])
                unlocks[j] = 1;
        }
    }
}
