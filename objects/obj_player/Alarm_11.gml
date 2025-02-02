if (!is_undefined(global.bonusIndex))
{
    if (global.bonus_stage && !global.bonuslost)
    {
        global.achievementFlags.beatBonus[global.bonusIndex] = 1;
        global.continues += 1;
        
        if (global.punchball_stage)
            unlock(UnknownEnum.Value_45 + global.bonusIndex);
    }
    
    global.bonusIndex = undefined;
}

room_goto_next();
