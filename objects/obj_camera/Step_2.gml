camera_set_view_size(view_camera[0], 256, 144);

if (global.classic_stage || global.vs_stage || global.punchball_stage || global.adventure_stage)
{
    var _x = 0;
    var _y = 0;
    
    if (!global.options.screenShake)
        obj_controller.shake = 0;
    
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
