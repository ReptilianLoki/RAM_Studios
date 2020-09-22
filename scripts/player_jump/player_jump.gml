function player_jump() {
	
	//calculate movement
	calc_movement();

	//check state
	if on_ground() {
		//apply stretch
		scale_x = scale_max;
		scale_y = scale_min;
		if(hsp != 0)
		{ 
			state = player.moving;
		}
		else
		{ 
			state = player.idle;
		};
	}
	
	//enable double jumps
	if jump {
		jumped();
	}

	//enable smaller jumps
	if(vsp < 0 and !jump_held)
	{
		vsp = max(vsp, jump_spd/jump_dampner);
	}

	//apply movement
	collision();
}
