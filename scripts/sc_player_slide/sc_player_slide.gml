// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_player_slide()
{
	sc_calc_movement();
	
	if(right or left)
	{
		hsp += min(abs(hsp), max_slide) * facing * 2 * max_hsp;
	}
	
	sc_collision();
}