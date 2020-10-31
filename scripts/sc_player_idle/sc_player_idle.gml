function sc_player_idle()
{
	//new sprite
	sprite_index = s_player_idle;
	
	vsp += SPD_GRAVITY

	//check state
	if (left or right)
	{
		state = player.moving;
	}
	
	//check jump
	if (jump) 
	{
		state = player.jump;
	}

	//check slide
	//if(can_slide and is_sliding)
	//{
	//	state = player.slide;
	//}
	
	sc_collision();
}