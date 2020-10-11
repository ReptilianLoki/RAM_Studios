function sc_player_slide()
{
	//new sprite
	sprite_index = s_player_slide;
	image_index = 0;
	image_speed = 1;
	
	
	sc_calc_movement();

	//if (right or left)
	//{
	//	sc_dusty_dust();
	//	hsp += min(abs(hsp), max_slide) * facing * 2 * max_hsp;
	//	hsp += facing * 2 * max_hsp;
	//}
	
	sc_dusty_dust();
	hsp += min(abs(hsp), max_slide) * facing * 2// * max_hsp;
	hsp -= slide_friction * facing;
	
	//hsp += facing * 2 * max_hsp;
	if(alarm[1] <= 0)
	{
		slide_friction += .3;
	}
	
	sc_collision();
	
	//if(alarm[0] == 0)
	//{
	//	slide_friction = .2;
	//}
	
	if (hsp <= 0 && facing > 0) 
	//or (left == false and right == false)
	{
		hsp = 0;
		state = player.idle;
		slide_pause = false;
	}
	else if(facing < 0 && hsp >= 0) 
	{
		hsp = 0;
		state = player.idle;
		slide_pause = false;
	}
}