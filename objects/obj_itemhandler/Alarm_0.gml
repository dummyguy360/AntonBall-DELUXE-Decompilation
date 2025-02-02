b_itemplace = instance_find(obj_itemspawn, irandom(instance_number(obj_itemspawn) - 1));

if (!global.vs_win)
{
    if (!position_meeting(b_itemplace.x, b_itemplace.y, obj_throwable))
        instance_create_depth(b_itemplace.x, b_itemplace.y, 0, items[irandom(array_length(items) - 1)]);
    
    alarm[0] = choose(800, 600, 400, 1000);
    b_itemcountdown = 0;
}
