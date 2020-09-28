function sc_player_idle(){
	//calculate movement
	sc_calc_movement();

	//check state
	if(hsp != 0)
	{
		state = player.moving;
	}
	
	//check jump
	if(jump) {
		sc_jumped();
	}
	
	//if(slide)
	//{
	//	state = player.slide;
	//}

	//apply movement
	sc_collision();
}