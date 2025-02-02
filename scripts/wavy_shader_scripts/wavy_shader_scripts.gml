function wavy_shader_begin()
{
    if (event_type == ev_draw && event_number == 0)
    {
        if (!surface_exists(global.wavy_surface))
            global.wavy_surface = surface_create(room_width, room_height);
        
        surface_set_target(global.wavy_surface);
        draw_clear_alpha(c_white, 0);
    }
}

function wavy_shader_end(argument0)
{
    if (event_type == ev_draw && event_number == 0)
    {
        if (surface_get_target() != -1)
            surface_reset_target();
        
        if (surface_exists(global.wavy_surface))
        {
            var tex = surface_get_texture(global.wavy_surface);
            var uv = texture_get_uvs(tex);
            var tex_w = texture_get_texel_width(tex);
            var tex_h = texture_get_texel_height(tex);
            var _timeHandle = shader_get_uniform(argument0, "time");
            var _uvHandle = shader_get_uniform(argument0, "uv");
            var _texelHandle = shader_get_uniform(argument0, "texel");
            shader_set(argument0);
            shader_set_uniform_f(_timeHandle, (global.dp_flow_is_active ? global.dp_current_time : current_time) / 1000);
            shader_set_uniform_f(_uvHandle, uv[0], uv[1], uv[2], uv[3]);
            shader_set_uniform_f(_texelHandle, tex_w, tex_h);
            draw_surface(global.wavy_surface, 0, 0);
            shader_reset();
        }
    }
}

function wavy_shader_end_powerup()
{
    wavy_shader_end(7);
}

function wavy_shader_end_reflection()
{
    wavy_shader_end(1);
}
