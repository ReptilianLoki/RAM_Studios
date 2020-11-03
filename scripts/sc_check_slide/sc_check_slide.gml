function sc_check_slide()
{
	if(abs(hsp) > (MAX_WALK - 1))
	{
		if(!is_sliding)
		{
			can_slide = true;
		}
		else
		{
			can_slide = false;
		}
	}
	
	if((left and hsp > 0) or (right and hsp < 0))
	{
		can_slide = false;
	}
	
	//check if we are holding down the slide button
	if(can_slide and slide)
	{
		is_sliding = true;
		can_slide = false;
		hsp = MAX_WALK * 1.8 * sign(hsp);
		state = player.slide;
	}
	
	//check if we are sliding but just released the slide key
	if(is_sliding and !slide)
	{
		is_sliding = false;
	}
	
	//do animation and friction logic
	if(is_sliding)
	{
		current_friction = slide_friction;
	}
	else
	{
		current_friction = FRICTION;
		is_sliding = false;
	}
}