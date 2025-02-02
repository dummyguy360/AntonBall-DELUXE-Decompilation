if (!is_undefined(displayMessage))
{
    if (!audio_is_playing(mus_unlockscreen))
    {
        audio_stop_all();
        audio_play_sound(mus_unlockscreen, 0, false);
    }
    
    if (obj_menu_input.confirm || obj_menu_input.cancel)
        displayMessage = undefined;
    
    exit;
}

var _flags = global.achievementFlags;

if (doCheck(UnknownEnum.Value_23, "YOU BEAT ARCADE!\nWELCOME HOME!", 595, "BOILER BASH", _flags.gameWon, room == rm_menu_antonball))
    exit;

if (doCheck(UnknownEnum.Value_6, "YOU BEAT ARCADE WITHOUT CONTINUES!\nANTON'S FEELING A LITTLE GRAY...", 185, "CLASSIC ANTON", _flags.gameWon, !_flags.continueUsed, room == rm_menu_antonball))
    exit;

if (doCheck(UnknownEnum.Value_7, "YOU BEAT PUNCHBALL WITHOUT CONTINUES!\nALL THAT BALLBLE TEA TURNED ANNIE MONOCHROME!", 432, "CLASSIC ANNIE", _flags.gameWon, !_flags.continueUsed, room == rm_menu_punchball))
    exit;

if (doCheck(UnknownEnum.Value_27, "WOW, YOU GOT CLASSIC ANTON AND ANNIE!\nRT + LT + SELECT (H + J) IN VS. FOR A SURPRISE...", 593, "SOMETHING (?)", global.unlocks[UnknownEnum.Value_6], global.unlocks[UnknownEnum.Value_7]))
    exit;

var _bruloCheck = 1;

for (i = 0; i < array_length(global.unlocks); i++)
{
    if (!global.unlocks[i] && i != UnknownEnum.Value_2)
    {
        _bruloCheck = 0;
        break;
    }
}

if (doCheck(UnknownEnum.Value_2, "YOU'VE UNLOCKED EVERYTHING!\nBRULO FINALLY HAS TIME FOR A BREAK.", 584, "BRULO", _bruloCheck))
    exit;

if (doCheck(UnknownEnum.Value_20, "YOU BEAT BONUS STAGE 2!\nYOU SURE SHOWED THOSE MONKEYS!", 720, "JUNGLE JAM", _flags.beatBonus[1], room == rm_menu_antonball))
    exit;

if (doCheck(UnknownEnum.Value_21, "YOU BEAT BONUS STAGE 3!\nGOOD JOB NOT SLIPPING!", 953, "ANTONTICA", _flags.beatBonus[2], room == rm_menu_antonball))
    exit;

if (doCheck(UnknownEnum.Value_22, "YOU BEAT BONUS STAGE 4!\nTHE BRICK ECONOMY IS IN SHAMBLES!", 17, "MORTAR MAYHEM", _flags.beatBonus[3], room == rm_menu_antonball))
    exit;

var _beboCheck = 1;
var i = UnknownEnum.Value_45;

while (i <= UnknownEnum.Value_49)
{
    if (!global.unlocks[i])
    {
        _beboCheck = 0;
        break;
    }
    
    i++;
}

if (doCheck(UnknownEnum.Value_10, "YOU BEAT ALL THE PUNCH BALL BONUS STAGES!\nTHIS LITTLE GUY IS IN AWE!", 277, "BEBO", _beboCheck))
    exit;

_flags.reset();

if (audio_is_playing(mus_unlockscreen))
{
    audio_stop_all();
    audio_play_sound(mus_title, 0, true);
}

instance_destroy();
