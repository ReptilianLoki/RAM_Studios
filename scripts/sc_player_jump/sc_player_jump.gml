function sc_player_jump() {
	
	//calculate movement
	sc_calc_movement();

	//check state
	if(sc_on_ground()) {
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
	
	if (place_meeting(x,y,o_hook_block)) 
	{
		x -= 5;
		state = player.hook;
	}
	//enable double jumps
	if jump {
		sc_jumped();
	}

	//enable smaller jumps
	if(vsp < 0 and !jump_held)
	{
		vsp = max(vsp, jump_spd/jump_dampner);
	}

	//apply movement
	sc_collision();
}
