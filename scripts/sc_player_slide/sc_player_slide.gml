function sc_player_slide()
{
	hsp -= min(abs(hsp),current_friction) * sign(hsp);
	sprite_index = s_player_slide;
	
	vsp += SPD_GRAVITY
	
	//check if we are sliding but just released the slide key
	if (is_sliding and !slide)
	{
		state = player.moving;
	}
	
	sc_dusty_dust();
	sc_screen_shake(1,3);
	sc_collision();

	if (is_sliding and jump)
	{
		state = player.jump;
		
	}
	
	
}