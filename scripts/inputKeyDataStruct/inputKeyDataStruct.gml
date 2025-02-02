function inputKeyDataStruct() constructor
{
    jump_button = 32769;
    jump_button_label = "Jump";
    attack_button = 32770;
    attack_button_label = "Clutch";
    bumper_l_button = 32775;
    bumper_l_button_label = "L Bumper";
    bumper_r_button = 32776;
    bumper_r_button_label = "R Bumper";
    grab_button = 32771;
    grab_button_label = "Grab/Shoot";
    start_button = 32778;
    start_button_label = "Start";
    select_button = 32777;
    select_button_label = "Select";
    
    static convertToKeyboard = function()
    {
        left_button = 65;
        left_button_label = "Left";
        right_button = 68;
        right_button_label = "Right";
        up_button = 87;
        up_button_label = "Up";
        down_button = 83;
        down_button_label = "Down";
        attack_button = 74;
        jump_button = 75;
        bumper_l_button = 85;
        bumper_r_button = 73;
        grab_button = 72;
        start_button = 13;
        select_button = 16;
    };
    
    static convertToSingleJoyCon = function()
    {
        select_button = -1;
    };
}
