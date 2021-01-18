function sc_player_jump()
{
	vsp += grv_final
	
	//Jump
	if (grounded || (sc_in_floor(tilemap,bbox_left,bbox_bottom+1) >= 0) || (sc_in_floor(tilemap,bbox_right,bbox_bottom+1) >= 0))
	{
		if ((jump) and (!incline_check))
		{
			vsp = -SPD_JUMP;
			grounded = false;
			sc_dusty_dust();
			audio_play_sound(sn_jump,1,false);
		}
		else if(!incline_check)
		{
			state = player.idle;
			sc_dusty_dust();
			sc_screen_shake(2,3);
			audio_play_sound(sn_land, 3, false);
		}
	}
	
	if(slide)
	{
		sprite_index = s_player_slide;
	}
	else
	{
		sprite_index = s_player_jump;
		image_index = 2;
		image_speed = 0;
	}
	
	sc_calc_movement();
	
	sc_collision();
}