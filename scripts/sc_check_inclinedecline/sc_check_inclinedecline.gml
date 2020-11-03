function sc_check_inclinedecline(y_pos){
	
	if (y_pos < prev_y)
	{
		incline_check = true;
		
		if (is_sliding)
		{
			hsp *= incline_friction;
		}
		else
		{
			hsp *= incline_walk_friction;
		}
	}
	else
	{
		incline_check = false;
		
		if (y_pos > prev_y)
		{
			hsp *= decline_friction;
		}
	}
	
}