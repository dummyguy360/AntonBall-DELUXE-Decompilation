transition = 1;
scalex = 0;
scaley = 0;
sprite = spr_pinhole;
alarm[0] = 120;

if (instance_exists(obj_player1spawn))
{
    xpos = obj_player1spawn.x;
    ypos = obj_player1spawn.y;
}
else
{
    xpos = room_width / 2;
    ypos = room_height / 2;
}

surf = surface_create(room_width, room_height);
