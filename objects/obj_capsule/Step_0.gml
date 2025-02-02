if (colorVal < 255)
{
    colorVal = min(colorVal + 2, 255);
    image_blend = make_color_hsv(0, 0, colorVal);
}

if (obj_lottery_menu.rolling)
{
    if (place_meeting(x, y, obj_unlockTrigger))
    {
        with (obj_lottery_menu)
        {
            displayUnlockable = ds_list_find_value(lotteryUnlockables, other.rollIndex);
            unlock(displayUnlockable.index);
            rolling = 0;
        }
        
        audio_play_sound(snd_extralife, 1, false);
        instance_destroy();
    }
}

if ((!obj_lottery_menu.rolling && !obj_lotteryGate.phy_active) || (obj_lottery_menu.rollTime % 75) == 1)
{
    if (!audio_is_playing(snd_lottery_shuffle))
        audio_play_sound(snd_lottery_shuffle, 1, false);
    
    phy_speed_y = -shakeSpeed;
    phy_speed_x = shakeAmount;
}
else
{
    shakeAmount = random_range(-shakeSpeed, shakeSpeed);
}
