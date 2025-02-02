if (transition == 1)
{
    scalex += 0.1;
    scaley += 0.1;
}

if (string_pos("rm_pb", room_get_name(room)) != 0)
    sprite = spr_pinhole3;

if (surface_exists(surf) && transition == 1)
{
    surface_set_target(surf);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    gpu_set_blendmode(bm_subtract);
    draw_sprite_ext(sprite, 0, xpos, ypos, scalex, scaley, 0, c_white, 1);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
    draw_set_color(c_white);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
    
    if (global.classic_stage)
        draw_sprite(spr_border_crop, 0, 0, 0);
    else if (global.punchball_stage)
        draw_sprite(spr_border_pb, 0, 0, 0);
    
    surface_reset_target();
}
else
{
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}
