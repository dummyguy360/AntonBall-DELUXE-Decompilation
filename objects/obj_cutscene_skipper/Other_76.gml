if (ds_map_find_value(event_data, "event_type") == "sequence event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "hit":
            audio_play_sound(snd_hit, 0, false);
            break;
        
        case "next":
            room_goto_next();
            break;
        
        case "end":
            event_perform(ev_alarm, 3);
            break;
    }
}
