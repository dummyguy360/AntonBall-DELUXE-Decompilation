noDeaths = 1;

switch (room)
{
    case rm_intermission1:
        setAchievement("BEAT_WORLD1_ARCADE");
        break;
    
    case rm_intermission2:
        setAchievement("BEAT_WORLD2_ARCADE");
        break;
    
    case rm_intermission3:
        setAchievement("BEAT_WORLD3_ARCADE");
        break;
    
    case rm_intermission4:
        setAchievement("BEAT_WORLD4_ARCADE");
        break;
    
    case rm_fin:
        setAchievement("BEAT_WORLD5_ARCADE");
        break;
    
    case rm_pb_intermission1:
        setAchievement("BEAT_WORLD1_PB");
        break;
    
    case rm_pb_intermission2:
        setAchievement("BEAT_WORLD2_PB");
        break;
    
    case rm_pb_intermission3:
        setAchievement("BEAT_WORLD3_PB");
        break;
    
    case rm_pb_intermission4:
        setAchievement("BEAT_WORLD4_PB");
        break;
    
    case rm_pb_fin:
        setAchievement("BEAT_WORLD5_PB");
        break;
    
    case rm_vs_aftermath:
        setAchievement("PLAY_VS_STAGE");
        break;
}

if (global.unlocks[UnknownEnum.Value_8])
    setAchievement("UNLOCK_PAUL");

var _vinylsObtained = 1;
var i = UnknownEnum.Value_36;

while (i <= UnknownEnum.Value_43)
{
    if (!global.unlocks[i])
    {
        _vinylsObtained = 0;
        break;
    }
    
    i++;
}

if (_vinylsObtained)
    setAchievement("CLEAR_ALLVINYLS");

if (!array_contains(global.unlocks, 0))
    setAchievement("BEAT_EVERYTHING");
