/// @desc Control menu

//item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//keyboard controls
if (menu_control)
{
	//audio_play_sound(sn_menu_music,6,false);
	//audio_stop_sound(sn_game_music);
	if (keyboard_check_pressed(vk_up))
	{
		audio_play_sound(sn_option_scroll,2,false);
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		audio_play_sound(sn_option_scroll,2,false);
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		sc_screen_shake(4,15)
		menu_control = false;
		audio_play_sound(sn_menu_click,1000,false);
	}
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: default: sc_transition(TRANS_MODE.NEXT); break;
		case 0: game_end(); break;
	}
}