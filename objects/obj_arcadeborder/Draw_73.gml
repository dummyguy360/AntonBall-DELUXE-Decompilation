draw_set_color(c_white);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
draw_sprite(sprite_index, image_index, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
