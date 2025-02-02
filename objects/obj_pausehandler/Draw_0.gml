if (pause == 1)
{
    if ((global.classic_stage || global.punchball_stage || global.vs_stage || global.adventure_stage) && !global.intermission)
    {
        draw_set_color(c_black);
        draw_set_alpha(0.5);
        draw_rectangle(0, 0, room_width, room_height, false);
        draw_set_color(c_white);
        gpu_set_blendmode(bm_normal);
        draw_set_alpha(1);
        
        if (global.classic_stage || global.adventure_stage)
            draw_sprite(spr_border_crop, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
        else if (global.punchball_stage)
            draw_sprite(spr_border_pb, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
        
        if (global.classic_stage || global.punchball_stage)
        {
            draw_set_valign(fa_bottom);
            draw_set_halign(fa_left);
            draw_set_font(fnt_basic);
            draw_text(34, 132, sfmt("CONTINUES REMAINING: %", global.continues));
        }
        
        var my = (room_height - cmn_menu_get_height(menu)) div 2;
        draw_set_font(global.font1);
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);
        cmn_menu_draw(menu, room_width div 2, my);
    }
}
