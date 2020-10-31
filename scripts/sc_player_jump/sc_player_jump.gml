// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_player_jump()
{
	vsp += SPD_GRAVITY
	
	//Jump
	if (grounded || (sc_in_floor(tilemap,bbox_left,bbox_bottom+1) >= 0) || (sc_in_floor(tilemap,bbox_right,bbox_bottom+1) >= 0))
	{
		if (jump)
		{
			vsp = -SPD_JUMP;
			grounded = false;
			sc_dusty_dust();
			audio_play_sound(sn_jump,1,false);
		}
		else
		{
			state = player.moving;
			sc_dusty_dust();
			sc_screen_shake(2,3);
			audio_play_sound(sn_land, 3, false);
		}
	}
	
	sc_calc_movement();
	
	sc_collision();
}