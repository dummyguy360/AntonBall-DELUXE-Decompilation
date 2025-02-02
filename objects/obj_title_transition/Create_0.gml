transition = 1;
scalex = 0;
scaley = 0;

if (instance_exists(obj_player))
{
    xpos = obj_player.x;
    ypos = obj_player.y;
}
else
{
    xpos = room_width / 2;
    ypos = room_height / 2;
}

surf = surface_create(room_width, room_height);
