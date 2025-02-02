event_inherited();
page = clamp(page + obj_menu_input.horizontalDirection, 0, array_length(drawString) - 1);

if (obj_menu_input.confirm)
{
    page += 1;
    
    if (page >= array_length(drawString))
        instance_destroy();
}
