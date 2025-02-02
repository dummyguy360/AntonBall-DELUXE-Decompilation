draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(global.font1);
draw_set_color(c_white);
gpu_set_blendmode(bm_normal);

if (global.classic_stage == 1)
{
    draw_sprite(mug, 0, 42, 13);
    draw_text(55, 13, "#");
    draw_text(63, 13, global.player_lives);
    draw_text(192, 13, global.stage_name);
    draw_set_font(global.font_score);
    draw_text(39, 123, string_repeat("-", 7 - string_length(string(global.points_p1))) + string(global.points_p1));
    
    if (global.player_lives == 0)
    {
        draw_sprite(spr_gameover, 0, room_width / 2, room_height / 2);
        
        if (room == rm_fin)
        {
            draw_set_halign(fa_center);
            draw_set_font(global.font1);
            draw_text(room_width / 2, 102, "THANKS FOR PLAYING!");
        }
    }
    
    if (global.combo > 1)
    {
        draw_set_font(global.font_combo);
        draw_text_transformed(40, 27, global.combo, global.combox, global.comboy, 0);
    }
}

if (global.punchball_stage == 1)
{
    var _drawX = 42;
    var _totalLives = 0;
    
    for (var i = 0; i < ds_list_size(global.activePlayers); i++)
    {
        var _lives = ds_list_find_value(global.activePlayers, i).playerLives;
        var _lifeSprite = spr_deadlife;
        
        with (obj_player)
        {
            if (ds_list_find_value(global.activePlayers, i) == playerData)
                _lifeSprite = mug;
        }
        
        draw_sprite(_lifeSprite, 0, _drawX, 12);
        _drawX += sprite_get_width(_lifeSprite);
        var _livesString = sfmt("#% ", _lives);
        draw_text(_drawX, 12, _livesString);
        _drawX += string_width(_livesString);
        _totalLives += _lives;
    }
    
    draw_text(192, 12, global.stage_name);
    draw_set_font(global.font_score);
    draw_sprite(spr_1_2, 0, 31, 124);
    draw_text(47, 124, string_repeat("-", 7 - string_length(string(global.points_p1))) + string(global.points_p1));
    draw_sprite(spr_1_2, 1, 152, 124);
    draw_text(168, 124, string_repeat("-", 7 - string_length(string(global.points_p2))) + string(global.points_p2));
    
    if (_totalLives <= 0)
    {
        draw_sprite(spr_gameover, 0, room_width / 2, room_height / 2);
        
        if (room == rm_pb_fin)
        {
            draw_set_halign(fa_center);
            draw_set_font(global.font1);
            draw_text(room_width / 2, 102, "THANKS FOR PLAYING!");
        }
    }
    
    if (global.combo > 1)
    {
        draw_set_font(global.font_combo);
        draw_text_transformed(40, 27, global.combo, global.combox, global.comboy, 0);
    }
    
    if (global.bonus_stage)
    {
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_font(fnt_basic);
        var _time = 0;
        
        if (obj_punchballWinManager.alarm[0] > 0)
            _time = obj_punchballWinManager.alarm[0];
        
        if (!global.win)
            draw_text(127, 32, frames_to_timer(_time));
    }
}
