event_inherited();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_chat);
var _string = sfmt("\n\nPage %/%", page + 1, array_length(drawString));
_string = drawString[page] + _string;
draw_text_ext(center.x, center.y, _string, string_height("Q"), drawRect.width - 14);
