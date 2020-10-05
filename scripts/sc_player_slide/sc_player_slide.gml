function sc_player_slide()
{
	//new sprite
	sprite_index = s_player_slide;
	image_index = 0;
	image_speed = 1;
	
	sc_calc_movement();

	if (right or left)
	{
		
		sc_dusty_dust();
		hsp += min(abs(hsp), max_slide) * facing * 2 * max_hsp;
		//hsp += facing * 2 * max_hsp;
	}
	
	sc_collision();
	
	if (hsp == 0) or (left == false and right == false)
	{
		state = player.idle;
	}
}