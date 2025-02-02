camera_set_view_size(view_camera[0], 256, 144);

if (room == rm_cs1_1)
{
    var _x = 0;
    var _y = obj_cs1_brulo.y;
    var _cur_x = camera_get_view_x(view_camera[0]);
    var _cur_y = camera_get_view_y(view_camera[0]);
    var _spd = 0.5;
    camera_set_view_pos(view_camera[0], _x, _y);
}
else if (room == rm_cs2_1 || 34 || 2 || 102 || 68)
{
    var _x = 0;
    var _y = 0;
    
    if (obj_controller.shake)
    {
        obj_controller.shakeDur--;
        _x += choose(-obj_controller.shakeForce, obj_controller.shakeForce);
        _y += choose(-obj_controller.shakeForce, obj_controller.shakeForce);
        
        if (obj_controller.shakeDur <= 0)
        {
            obj_controller.shake = 0;
            obj_controller.shakeDur = 5;
        }
    }
    
    var _cur_x = camera_get_view_x(view_camera[0]);
    var _cur_y = camera_get_view_y(view_camera[0]);
    var _spd = 0.5;
    camera_set_view_pos(view_camera[0], round(lerp(_cur_x, _x, _spd)), round(lerp(_cur_y, _y, _spd)));
}
