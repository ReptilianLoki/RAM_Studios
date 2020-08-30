/// @description Checks if Player is on Solid Ground
function sc_check_ground() {

	if(!place_meeting(x, y + 1, o_solid))
	{
		yspeed += gravity_acceleration;
	
		// Player is in the air
		//sprite_index = s_player_jump;
		//image_index = (yspeed > 0);
	
		// Control the jump height
		if(up_release and yspeed < -6)
		{
			yspeed = -3;
		}
	}
	else
	{
		yspeed = 0;
	
		// Jumping code
		if(up)
		{
			yspeed = jump_height;
			// audio_play_sound(a_jump, 5, false);
		}
	}


}
