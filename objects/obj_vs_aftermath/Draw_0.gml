draw_set_alpha(1);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
var _teamPlayers = [0, 0];
var _backgroundHeight = sprite_get_height(spr_player_menu);

for (var i = 0; i < ds_list_size(global.activePlayers); i++)
{
    var _playerData = ds_list_find_value(global.activePlayers, i);
    var _drawX = (room_width / 3) * (1 + _playerData.team);
    var _drawY = (room_height / 3) + (_backgroundHeight * _teamPlayers[_playerData.team]) + drawOffset;
    _teamPlayers[_playerData.team] += 1;
    draw_sprite(spr_player_menu, i, _drawX, _drawY);
    draw_sprite(global.aftermathPortraits[i], 0, _drawX, (_drawY + (sprite_get_height(spr_player_menu) / 2)) - 1);
}

draw_set_halign(fa_center);
draw_set_font(global.font1);
draw_text(room_width / 2, 8, "RESULTS");
draw_set_font(fnt_basic);
var _resultsY = (room_height / 3) + (_backgroundHeight * 1.5) + drawOffset;
draw_set_color(c_white);
draw_text((room_width / 3) + 1, _resultsY, "W - " + string(global.player1_wins) + "\nL - " + string(global.player1_losses));
draw_text((room_width / 3) - 1, _resultsY, "W - " + string(global.player1_wins) + "\nL - " + string(global.player1_losses));
draw_text(room_width / 3, _resultsY + 1, "W - " + string(global.player1_wins) + "\nL - " + string(global.player1_losses));
draw_text(room_width / 3, _resultsY - 1, "W - " + string(global.player1_wins) + "\nL - " + string(global.player1_losses));
draw_text(((room_width / 3) * 2) + 1, _resultsY, "W - " + string(global.player2_wins) + "\nL - " + string(global.player2_losses));
draw_text(((room_width / 3) * 2) - 1, _resultsY, "W - " + string(global.player2_wins) + "\nL - " + string(global.player2_losses));
draw_text((room_width / 3) * 2, _resultsY + 1, "W - " + string(global.player2_wins) + "\nL - " + string(global.player2_losses));
draw_text((room_width / 3) * 2, _resultsY - 1, "W - " + string(global.player2_wins) + "\nL - " + string(global.player2_losses));
draw_set_color(c_red);
draw_text(room_width / 3, _resultsY, "W - " + string(global.player1_wins) + "\nL - " + string(global.player1_losses));
draw_set_color(c_green);
draw_text((room_width / 3) * 2, _resultsY, "W - " + string(global.player2_wins) + "\nL - " + string(global.player2_losses));

if (menuActive && !global.dp_flow_is_active)
{
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_set_font(global.font1);
    var my = (room_height - cmn_menu_get_height(menu)) / 2;
    draw_set_halign(fa_center);
    cmn_menu_draw(menu, room_width / 2, my);
}
