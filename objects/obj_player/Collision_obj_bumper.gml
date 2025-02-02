if (currentstate != UnknownEnum.Value_7 && !b_ishurt)
{
    other.framespeed += 0.5;
    other.hits += 1;
    var _newhsp = sign(-hsp) * 2;
    
    if (_newhsp == 0)
        _newhsp = choose(-2, 2);
    
    deal_damage(_newhsp);
    audio_play_sound(snd_molehit, 1, false);
    audio_play_sound(snd_bumper, 1, false);
    obj_steam_achievements.setAchievement("THE_INCREDIBLE_SPINNER");
}
