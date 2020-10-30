function sc_jumped() 
{
	//standard jump off the ground
	if sc_on_ground() jumps = jumps_initial;
	if jumps > 0 
	{
		sc_dusty_dust();
		scale_x = scale_min;
		scale_y = scale_max;
		state = player.jump;
		vsp_decimal = 0;
		vsp = jump_spd;
		jumps -= 1;
	}
}
