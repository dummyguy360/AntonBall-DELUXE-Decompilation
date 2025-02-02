draw_set_color(c_black);
draw_set_alpha(0.75);
drawRect.draw();
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fnt_tiny);

if (currentlyBinding)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    var _pos = drawRect.getCenter();
    draw_text(_pos.x, _pos.y, "INPUT NEW\nBUTTON!");
}
else
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    cmn_menu_draw(myMenu, drawRect.x, drawRect.y);
}
