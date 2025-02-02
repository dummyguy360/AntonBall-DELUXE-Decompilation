var _lotterySprites = [611, 125, 631];
var _lotteryX = room_width / 2;
var _lotteryY = room_height / 2;
draw_sprite(spr_lottery_lever, floor(leverFrame), (_lotteryX - sprite_get_xoffset(spr_lottery)) + 65, (_lotteryY - sprite_get_yoffset(spr_lottery)) + 102);

for (var i = 0; i < array_length(_lotterySprites); i++)
{
    draw_sprite(_lotterySprites[i], 0, _lotteryX, _lotteryY);
    
    if (i == 0)
    {
        with (obj_capsuleSpawner)
            other.drawUnlockable(id);
        
        with (obj_capsule)
            other.drawUnlockable(id);
    }
}

draw_set_font(fnt_basic);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_white);
var _chips = string(global.currency);
draw_text(room_width - 2, 9, _chips);
draw_sprite(spr_largetokengreen, loop(0, sprite_get_number(spr_largetokengreen), sprite_get_duration(417) / 60), floor(room_width - string_width(_chips) - 4 - (sprite_get_width(spr_largetokengreen) / 2)), 8);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (!is_undefined(displayUnlockable) && leverFrame == 0)
{
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    var _unlockString = "CONGLATURATION!\nYOU HAVE GET:\n" + displayUnlockable.title;
    var _rectWidth = string_width(_unlockString) * 1.5;
    var _rectHeight = string_height(_unlockString) * 1.5;
    draw_rectangle(_lotteryX - (_rectWidth / 2), _lotteryY - (_rectHeight / 2), _lotteryX + (_rectWidth / 2), _lotteryY + (_rectHeight / 2), false);
    draw_set_alpha(1);
    draw_set_color(loop_through_colors(2, 43775, 214, 10027161, 6357000));
    draw_text(_lotteryX, _lotteryY, _unlockString);
}

draw_back_button(2, 2, backCharge, backTime);

if (firstRoll)
    draw_bottom_scroll("WELCOME TO THE LOTTERY, WHY DON'T YOU TRY IT OUT? YOUR FIRST ROLL ONLY COSTS 10,000 CHIPS!");
else
    draw_bottom_scroll("CHARACTERS? VS. STAGES? VINYLS? YOU WANT IT? IT'S YOURS MY FRIEND, AS LONG AS YOU HAVE 50,000 CHIPS. EACH.");
