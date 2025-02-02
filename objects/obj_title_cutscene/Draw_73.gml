if (!startup)
{
    draw_set_color(c_black);
    draw_rectangle(0, room_height - 11, room_width, room_height, false);
    
    if (alarm[0] == -1)
        draw_bottom_scroll("GAME CREATED AND DEVELOPED BY SUMMITSPHERE! PUBLISHED UNDER LICENSE BY PROPONENT GAMES! WE MADE THIS! ALL RIGHTS RESERVED! THIS IS IMPORTANT!");
}
