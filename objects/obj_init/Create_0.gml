lastposition_x = x;
lastposition_y = y;
global.wavy_surface = -1;
global.font1 = font_add_sprite_ext(spr_fntplaceholder, "ABCDEFGHIJKLMNOPQRSTUVWXYZ-.0123456789#@!=?'", 1, -1);
global.font_score = font_add_sprite_ext(spr_fnt_score, "0123456789-", 0, 0);
global.font_combo = font_add_sprite_ext(spr_fnt_combo, "0123456789", 0, 0);
pal_swap_init_system(8);
initialize_serialized_values();
global.activePlayers = ds_list_create();
global.snickdialogue = 0;
global.cutscene = 0;
global.time = 2;
global.bonuslost = 0;
audio_master_gain(0.4);
randomize();
global.player1_wins = 0;
global.player2_wins = 0;
global.player1_losses = 0;
global.player2_losses = 0;

if (os_type == os_switch)
{
    var _styles = 31;
    switch_controller_set_supported_styles(_styles);
    switch_controller_support_set_defaults();
    var _accountCount = switch_accounts_get_accounts();
    var _openAccounts = [];
    
    for (var i = 0; i < _accountCount; i++)
    {
        if (switch_accounts_is_user_open(i))
            array_push(_openAccounts, i);
    }
    
    switch_save_data_unmount();
    
    if (array_length(_openAccounts) == 1)
    {
        switch_save_data_mount(_openAccounts[0]);
    }
    else
    {
        for (var i = 0; i < array_length(_openAccounts); i++)
            switch_accounts_close_user(_openAccounts[i]);
        
        var _id = -1;
        
        while (_id < 0)
            _id = switch_accounts_select_account(1, 0, 0);
    }
}

global.bonusIndex = undefined;
global.achievementFlags = 
{
    reset: function()
    {
        gameWon = 0;
        continueUsed = 0;
        beatBonus = [0, 0, 0, 0, 0];
    }
};
global.achievementFlags.reset();
load_begin();
window_set_fullscreen(false);

if (global.options.screenScale != -1)
{
    window_set_size(256 * global.options.screenScale, 144 * global.options.screenScale);
    surface_resize(application_surface, 256, 144);
}

unlock(UnknownEnum.Value_0);
unlock(UnknownEnum.Value_1);
alarm[0] = 6;
alarm[1] = 10;
