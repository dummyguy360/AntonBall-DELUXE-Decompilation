function rec_room_menu()
{
    for (var i = 0; i < array_length(menuItems); i++)
    {
        var _item = menuItems[i];
        
        if (scr_button(_item.name))
        {
            if (audio_is_playing(_item.sound))
            {
                audio_pause_sound(_item.sound);
            }
            else if (audio_is_paused(_item.sound))
            {
                audio_resume_sound(_item.sound);
            }
            else
            {
                audio_stop_all();
                currentSound = audio_play_sound(_item.sound, 1, false);
                currentlyPlayingItem = _item;
                bottomScrollTime = 0;
            }
        }
    }
}
