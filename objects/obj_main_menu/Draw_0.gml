draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(c_white);
draw_set_alpha(1);

if (menu != subMenus.mainMenu)
    draw_back_button(2, 2, 0, 1);

if (menu == subMenus.options)
    draw_set_font(fnt_basic);
else
    draw_set_font(global.font1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (menu == subMenus.mainMenu)
{
    draw_sprite(spr_main_menu_header, 0, 2, 4);
    cmn_menu_draw(menu, 5, 31);
}
else
{
    cmn_menu_draw(menu, room_width / 2, (room_height - cmn_menu_get_height(menu)) / 2);
}
