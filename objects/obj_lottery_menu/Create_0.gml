roll = function()
{
    if (global.currency >= rollPrice)
    {
        if (!instance_exists(obj_capsule) && !instance_exists(obj_capsuleSpawner))
        {
            displayUnlockable = 
            {
                title: "NOTHING!\nYOU ALREADY UNLOCKED EVERYTHING YOU DOLT!"
            };
        }
        else
        {
            rolling = 1;
            rollTime = 0;
            global.currency -= rollPrice;
            firstRoll = 0;
            rollPrice = defaultRollPrice;
        }
        
        leverFrame = 1;
        
        if ((instance_number(obj_capsule) + instance_number(obj_capsuleSpawner)) <= 1)
            obj_steam_achievements.setAchievement("CLEAR_LOTTERY");
    }
    else
    {
        audio_stop_sound(snd_buzzer);
        audio_play_sound(snd_buzzer, 0, false);
    }
};

var _unlockable = function(argument0, argument1, argument2) constructor
{
    index = argument0;
    title = argument1;
    sprite = argument2;
};

drawUnlockable = function(argument0)
{
    var _sprite = ds_list_find_value(lotteryUnlockables, argument0.rollIndex).sprite;
    
    with (argument0)
    {
        draw_sprite_ext(_sprite, 0, x, y, 1, 1, image_angle, image_blend, 1);
        draw_self();
    }
};

lotteryUnlockables = ds_list_create();
ds_list_add(lotteryUnlockables, new _unlockable(UnknownEnum.Value_3, "ANTON'S DOG", 161), new _unlockable(UnknownEnum.Value_4, "ANNIE'S CAT", 826), new _unlockable(UnknownEnum.Value_5, "ANTARI", 195), new _unlockable(UnknownEnum.Value_9, "OLD MANTON", 887), new _unlockable(UnknownEnum.Value_11, "MINI-MITT", 104), new _unlockable(UnknownEnum.Value_14, "ANT ON BALL", 590), new _unlockable(UnknownEnum.Value_15, "DON", 364), new _unlockable(UnknownEnum.Value_16, "COOPER", 599), new _unlockable(UnknownEnum.Value_17, "CLIVE", 574), new _unlockable(UnknownEnum.Value_18, "PEPPINO", 703), new _unlockable(UnknownEnum.Value_19, "RED GUY", 114), new _unlockable(UnknownEnum.Value_24, "A SANDY STAGE: BEACH BRAWL", 546), new _unlockable(UnknownEnum.Value_25, "A PATRONIZED STAGE: THE BALLOSSEUM", 799), new _unlockable(UnknownEnum.Value_26, "A HELLISH STAGE: DEVILLED GARDEN", 173), new _unlockable(UnknownEnum.Value_36, "POLAR MARCH, BY FAT TONY", 557), new _unlockable(UnknownEnum.Value_37, "BEAR IT ALL, BY INVISIBLE YAL", 557), new _unlockable(UnknownEnum.Value_38, "GREEN SOCKS, BY CRAZY CAM", 31), new _unlockable(UnknownEnum.Value_39, "LUKEWARM COFFEE, BY MINI MASSIMO", 676), new _unlockable(UnknownEnum.Value_40, "DANTHONY'S ORB, BY NOTORIOUS MIG", 747), new _unlockable(UnknownEnum.Value_41, "DO YOU, BY SMALL JOHN", 670), new _unlockable(UnknownEnum.Value_42, "SUPER GANGSTON, BY KYOOVO", 867), new _unlockable(UnknownEnum.Value_43, "HARMED YARDS, BY FREE MAX", 429));

if (global.unlocks[UnknownEnum.Value_12])
    ds_list_add(lotteryUnlockables, new _unlockable(UnknownEnum.Value_13, "MICRO-DEMON", 816));

firstRoll = 1;
var _spawnRadius = 20;
var _spawnCapsule = undefined;
var i = 0;

while (i < ds_list_size(lotteryUnlockables))
{
    if (array_get(global.unlocks, ds_list_find_value(lotteryUnlockables, i).index))
    {
        ds_list_delete(lotteryUnlockables, i);
        firstRoll = 0;
        continue;
    }
    
    var _spawnPos = random_direction();
    show_debug_message(ds_list_find_value(lotteryUnlockables, i).title);
    show_debug_message(_spawnPos);
    _spawnPos.multiply(random(_spawnRadius));
    _spawnPos.add(room_width / 2, room_height / 2);
    
    if (is_undefined(_spawnCapsule))
    {
        _spawnCapsule = instance_create_depth(0, 0, 0, obj_capsuleSpawner);
        _spawnCapsule.rollIndex = i;
    }
    
    var _collisionFound = 0;
    
    with (_spawnCapsule)
    {
        x = _spawnPos.x;
        y = _spawnPos.y;
        _collisionFound = place_meeting(x, y, obj_lotteryWall);
    }
    
    if (_collisionFound)
        continue;
    
    _spawnCapsule = undefined;
    i++;
}

defaultRollPrice = 50000;
rollPrice = firstRoll ? 10000 : defaultRollPrice;
displayUnlockable = undefined;
backCharge = 0;
backTime = 40;
leverFrame = 0;
rolling = 0;
rollTime = 0;
layer_script_begin("Background", lottery_background_begin);
layer_script_end("Background", lottery_background_end);
audio_stop_all();
audio_play_sound(mus_lottery, 100, true);
