function sc_player_idle()
{
	//new sprite
	sprite_index = s_player_idle;
	
	vsp += SPD_GRAVITY

	//check state
	if (left or right)
	{
		state = player.moving;
		sprite_index = s_player_walk;
	}
	
	//check jump
	if (jump) 
	{
		state = player.jump;
	}
	
	sc_calc_movement();
	
	sc_collision();
}