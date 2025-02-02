menu = cmn_menu_create(scr_punchball_menu);
selected = 0;

if (global.dp_flow_is_active)
    event_perform(ev_alarm, 1);
