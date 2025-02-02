if (!global.win)
{
    if (global.classic_stage)
        sprite_index = spr_border_crop;
    else if (global.punchball_stage)
        sprite_index = spr_border_pb;
}

if (global.win)
{
    if (global.classic_stage)
        sprite_index = spr_border_win;
    else if (global.punchball_stage)
        sprite_index = spr_border_win_pb;
}

if (string_pos("rm_pb_intermission", room_get_name(room)) != 0)
    sprite_index = spr_border_pb;
