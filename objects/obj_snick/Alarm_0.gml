if (global.snickdialogue == 0)
{
    instance_create_depth(0, 0, 100, obj_dialoguebox);
    global.snickdialogue = 1;
}
else if (global.snickdialogue == 1)
{
    global.go = 1;
}
