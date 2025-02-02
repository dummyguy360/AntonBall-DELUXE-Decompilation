function input_constant_to_string(argument0)
{
    switch (argument0)
    {
        case 49:
            return "1";
        
        case 50:
            return "2";
        
        case 51:
            return "3";
        
        case 52:
            return "4";
        
        case 53:
            return "5";
        
        case 54:
            return "6";
        
        case 55:
            return "7";
        
        case 56:
            return "8";
        
        case 57:
            return "9";
        
        case 81:
            return "Q";
        
        case 87:
            return "W";
        
        case 69:
            return "E";
        
        case 82:
            return "R";
        
        case 84:
            return "T";
        
        case 89:
            return "Y";
        
        case 85:
            return "U";
        
        case 73:
            return "I";
        
        case 79:
            return "O";
        
        case 80:
            return "P";
        
        case 65:
            return "A";
        
        case 83:
            return "S";
        
        case 68:
            return "D";
        
        case 70:
            return "F";
        
        case 71:
            return "G";
        
        case 72:
            return "H";
        
        case 74:
            return "J";
        
        case 75:
            return "K";
        
        case 76:
            return "L";
        
        case 90:
            return "Z";
        
        case 88:
            return "X";
        
        case 67:
            return "C";
        
        case 86:
            return "V";
        
        case 66:
            return "B";
        
        case 78:
            return "N";
        
        case 77:
            return "M";
        
        case 18:
            return "Alt";
        
        case 17:
            return "Ctrl";
        
        case 13:
            return "Enter";
        
        case 9:
            return "Tab";
        
        case 16:
            return "Shift";
        
        case 32:
            return "Space";
        
        case 38:
            return "Up";
        
        case 37:
            return "Left";
        
        case 40:
            return "Down";
        
        case 39:
            return "Right";
        
        case 32769:
            return "A";
        
        case 32770:
            return "B";
        
        case 32771:
            return "X";
        
        case 32772:
            return "Y";
        
        case 32773:
            return "LB";
        
        case 32774:
            return "RB";
        
        case 32775:
            return "LT";
        
        case 32776:
            return "RT";
        
        case 32778:
            return "Start";
        
        case 32777:
            return "Select";
        
        default:
            return undefined;
    }
}

function gamepad_check_any(argument0, argument1, argument2)
{
    argument1 = default_val(argument1, 1);
    argument2 = default_val(argument2, 0.5);
    
    for (var i = 32769; i <= 32784; i++)
    {
        if (gamepad_button_check(argument0, i))
            return 1;
    }
    
    if (!argument1)
        return 0;
    
    for (var i = 32785; i < 32788; i++)
    {
        if (abs(gamepad_axis_value(argument0, i)) > argument2)
            return 1;
    }
    
    return 0;
}
