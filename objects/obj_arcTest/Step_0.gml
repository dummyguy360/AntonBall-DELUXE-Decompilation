if (mouse_check_button_pressed(mb_left))
    startPos.set(mouse_x, mouse_y);

targetPos.set(mouse_x, mouse_y);
myAngle = projectile_angle(startPos, targetPos, spd, grav);
