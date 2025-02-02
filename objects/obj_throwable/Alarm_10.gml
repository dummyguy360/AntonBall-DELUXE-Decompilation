if (item_flash == 1)
{
    alarm[10] = 15;
    item_flash = 0;
}
else if (!item_flash)
{
    alarm[10] = 40;
    item_flash = 1;
}
