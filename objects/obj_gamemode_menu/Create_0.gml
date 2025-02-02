menu = cmn_menu_create(gamemode_menu);
selected = 0;

if (!audio_is_playing(mus_title))
{
    audio_stop_all();
    audio_play_sound(mus_title, 1, true);
}

if (global.dp_flow_is_active)
    event_perform(ev_alarm, 1);
else
    instance_create_depth(0, 0, depth - 1, obj_unlockDisplay);
