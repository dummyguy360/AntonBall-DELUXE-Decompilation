player_input(global.controller_1);

if (characters < message_length)
{
    characters += (increase * (1 + hold));
    message_draw = string_copy(message[message_current], 0, characters);
}
else if (key_jump)
{
    if (message_current < message_end)
    {
        message_current += 1;
        message_length = string_length(message[message_current]);
        characters = 0;
        message_draw = "";
        alarm[0] = 1;
    }
    else
    {
        global.go = 1;
        global.snick_dialogue = 1;
        instance_destroy(self);
    }
}
