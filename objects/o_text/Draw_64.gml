/// @desc DRAW TEXTBOX
sc_nine_slice_box_stretch(s_text_box,x1,y1,x2,y2,background);
draw_set_font(f_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black); 
var _print = string_copy(message,1,text_progress); 

if (responses[0] != -1) and (text_progress >= string_length(message))
{
	for (var i = 0; i < array_length_1d(responses); i++)
	{
		_print += "\n";
		if (i == response_selected)	_print += "> ";
			_print += responses[i];
		if (i == response_selected) _print += " <";
	}
}

draw_text((x1 + x2) /2, y1 + 8, _print); 
draw_set_color(c_white); 
draw_text((x1 + x2) /2, y1 + 7, _print); 