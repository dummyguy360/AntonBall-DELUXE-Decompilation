if (!checkComplete)
{
    if (global.bonus_stage)
    {
        var _leverCheck = 1;
        
        with (obj_punchballBonusLever)
        {
            if (alarm[0] == -1)
                _leverCheck = 0;
        }
        
        with (obj_punchballBonusDoor)
            active = !_leverCheck;
    }
    else
    {
        for (var i = 0; i < array_length(spawnManagersToCheck); i++)
        {
            if (instance_exists(spawnManagersToCheck[i]))
                exit;
        }
        
        audio_stop_sound(snd_hit);
        global.win = 1;
        checkComplete = 1;
    }
}
