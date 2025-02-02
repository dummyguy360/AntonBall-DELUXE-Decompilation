var _monitorWidth = window_get_width();
var _monitorHeight = window_get_height();
var surfW = surface_get_width(application_surface) * 4;
var surfH = surface_get_height(application_surface) * 4;

if (!surface_exists(surf))
    surf = surface_create(surfW, surfH);

if (!surface_exists(surf2))
    surf2 = surface_create(surfW, surfH);

if (!surface_exists(surf3))
    surf3 = surface_create(surfW / 4, surfH / 4);

for (var i = 0; i < surf_num; i++)
{
    if (!surface_exists(surf_arr[i]))
        surf_arr[i] = surface_create(surfW / 4, surfH / 4);
}

surface_set_target(surf_arr[num % surf_num]);
draw_surface(application_surface, 0, 0);
surface_reset_target();
num++;

switch (global.options.retroFilter)
{
    case "GAME BALL ADVANCE":
        surface_set_target(surf2);
        draw_clear_alpha(c_black, 0);
        shader_set(shLCD);
        shader_set_uniform_f(shader_get_uniform(shLCD, "TextureSize"), surfW / 4, surfH / 4);
        draw_surface_ext(application_surface, 0, 0, 4, 4, 0, c_white, 1);
        shader_reset();
        surface_reset_target();
        break;
    
    case "ATB-001":
        surface_set_target(surf3);
        draw_clear_alpha(c_black, 0);
        shader_set(shGBA_RT);
        
        for (var i = 0; i < surf_num; i++)
            texture_set_stage(shader_get_sampler_index(shGBA_RT, "tex" + string(surf_num - i)), surface_get_texture(surf_arr[i]));
        
        draw_surface(application_surface, 0, 0);
        shader_reset();
        surface_reset_target();
        surface_set_target(surf);
        draw_clear_alpha(c_black, 0);
        shader_set(shGBA_A);
        shader_set_uniform_f(shader_get_uniform(shGBA_A, "SourceSize"), surfW / 4, surfH / 4);
        draw_surface_ext(surf3, 0, 0, 4, 4, 0, c_white, 1);
        shader_reset();
        surface_reset_target();
        surface_set_target(surf2);
        shader_set(shGBA_C);
        draw_surface(surf, 0, 0);
        shader_reset();
        draw_surface_ext(application_surface, 0, 0, 4, 4, 0, c_white, 0.3);
        surface_reset_target();
        break;
    
    case "NONE":
        surface_set_target(surf2);
        draw_surface_ext(application_surface, 0, 0, 4, 4, 0, c_white, 1);
        surface_reset_target();
        break;
}

if (global.options.screenScale == "-1")
{
    shader_set(shd_coverage_pixel);
    bitmap_width = shader_get_uniform(shd_coverage_pixel, "bitmap_width");
    shader_set_uniform_f(bitmap_width, surfW);
    bitmap_height = shader_get_uniform(shd_coverage_pixel, "bitmap_height");
    shader_set_uniform_f(bitmap_height, surfH);
    x_scale = shader_get_uniform(shd_coverage_pixel, "x_scale");
    shader_set_uniform_f(x_scale, _monitorWidth / surfW);
    y_scale = shader_get_uniform(shd_coverage_pixel, "y_scale");
    shader_set_uniform_f(y_scale, _monitorHeight / surfH);
    draw_surface_ext(surf2, 0, 0, _monitorWidth / surfW, _monitorHeight / surfH, 0, c_white, 1);
    shader_reset();
}
else
{
    draw_surface_ext(surf2, 0, 0, _monitorWidth / surfW, _monitorHeight / surfH, 0, c_white, 1);
}
