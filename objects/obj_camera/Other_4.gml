view_enabled = true;
view_visible[0] = true;

if (instance_exists(obj_player))
{
    var _x = clamp(obj_player.x - 128, 0, room_width - 256);
    var _y = clamp(obj_player.y - 72, 0, room_height - 144);
    var _cur_x = camera_get_view_x(view_camera[0]);
    var _cur_y = camera_get_view_y(view_camera[0]);
    camera_set_view_pos(view_camera[0], _x, _y);
}
