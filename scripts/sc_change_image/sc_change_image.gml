/// @description Checks Player Animation(Moving vs Idle)
function sc_change_image() {

	// Check player animation
	if(xspeed == 0)
	{
		sprite_index = s_player_idle;
	}
	else
	{
		sprite_index = s_player_walk;
	}

	// Change direction of sprite
	if(xspeed != 0)
	{
		image_xscale = sign(xspeed);
	}


}
