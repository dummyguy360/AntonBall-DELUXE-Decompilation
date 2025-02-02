if (leverFrame > 0)
{
    leverFrame += (sprite_get_speed(208) / 60);
    
    if (leverFrame >= sprite_get_number(spr_lottery_lever))
        leverFrame = 0;
}

if (is_undefined(displayUnlockable) && !rolling)
{
    if (obj_menu_input.cancelHeld)
        backCharge += 1;
    else
        backCharge = 0;
    
    if (backCharge >= backTime)
    {
        room_goto(rm_title);
    }
    else if (obj_menu_input.confirm && !rolling)
    {
        if (global.currency >= rollPrice)
            audio_play_sound(snd_lottery_crank, 1, false);
        
        roll();
    }
}
else if (leverFrame == 0 && (obj_menu_input.confirm || obj_menu_input.cancel))
{
    displayUnlockable = undefined;
}

if (rolling)
    rollTime += 1;
else
    rollTime = 0;
