function sc_calc_movement()
{
	walljumpdelay = max(walljumpdelay-1, 0);
	if(walljumpdelay == 0)
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
		}
	}
	
	if (left)
	{
		image_xscale = -1;
	}
	else if(right)
	{
		image_xscale = 1;
	}
	
	//Wall Jump
	if((onWall != 0) && (sc_on_ground()) && (jump))
	{
		walljumpdelay = walljumpdelay_max;
		hsp = -onWall * hspWJump;
		vsp = vspWJump;
		hsp_fraction = 0;
		vsp_fraction = 0;
	}
	
	grv_final = SPD_GRAVITY;
	vsp_max_final = MAX_WALK;
	if((onWall != 0) && (vsp > 0))
	{
		grv_final = grvWall;
		vsp_max_final = vspWMax;
	}
}