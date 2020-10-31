// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_player_walk(){
	
	sprite_index = s_player_walk;
	
	vsp += SPD_GRAVITY
	
	sc_calc_movement();
	
	if(jump)
	{
		sc_dusty_dust();
		sc_screen_shake(1,3);
		state = player.jump;
	}
	
	//check slide
	if(can_slide and slide)
	{
		state = player.slide;
	}
	
	
	sc_collision();
}