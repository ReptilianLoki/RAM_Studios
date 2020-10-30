function sc_check_inclinedecline(y_pos){
	
	if (y_pos < prev_y)
	{
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
		if (y_pos > prev_y)
		{
			hsp *= decline_friction;
		}
	}
	
}