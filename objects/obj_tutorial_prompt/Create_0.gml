on_select = function()
{
    audio_play_sound(snd_select, 1, false);
    alarm[0] = 180;
    instance_create_depth(x, y, -100, obj_level_transition_exit);
};

menu = cmn_menu_create(tutorial_prompt);

if (!global.unlocks[UnknownEnum.Value_44])
{
    global.tutorialEnabled = 1;
    visible = false;
    on_select();
}
