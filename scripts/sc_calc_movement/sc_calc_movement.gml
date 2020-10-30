function sc_calc_movement()
{
	move = (right - left)
	
	if ((right or left) and !is_sliding)
	{
		hsp += SPD_WALK * move;
		if(hsp >= MAX_WALK)
		{
			hsp = MAX_WALK
		}
		else if(hsp <= -MAX_WALK)
		{
			hsp = -MAX_WALK
		}
		
	}
	else
	{
		hsp -= min(abs(hsp),current_friction) * sign(hsp);
		if(hsp == 0)
		{
			state = player.idle;
		}
	}
	
	if (hsp != 0)
	{
		image_xscale = sign(hsp);
	}
}