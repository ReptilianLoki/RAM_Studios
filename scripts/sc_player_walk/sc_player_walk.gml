function sc_player_walk()
{
	
    can_boost = true;
	sprite_index = s_player_walk;
	if(image_speed = 0)
	{
		image_speed = 1;
	}
	
	vsp += SPD_GRAVITY
	
	sc_calc_movement();
	
	if(jump)
	{
		sc_dusty_dust();
		sc_screen_shake(1,3);
		state = player.jump;
	}
	
	//check slide
	if(can_slide and slide)
	{
		state = player.slide;
	}
	
	if(hsp == 0 or !left and !right)
	{
		state = player.idle;
	}
	
	sc_collision();
}