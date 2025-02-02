drawPos.set(startPos.x, startPos.y);
velocity = degtovec2(myAngle);
velocity.multiply(spd);
show_debug_message(myAngle);
draw_set_color(c_blue);
draw_line(startPos.x, startPos.y, startPos.x + velocity.x, startPos.y + velocity.y);
draw_set_color(c_fuchsia);

while (drawPos.x > 0 && drawPos.x < room_width && drawPos.y > 0 && drawPos.y < room_height)
{
    draw_circle(drawPos.x, drawPos.y, 1, 0);
    velocity.y += grav;
    drawPos.x += velocity.x;
    drawPos.y += velocity.y;
}

draw_set_color(c_red);
draw_circle(mouse_x, mouse_y, 1, 0);
