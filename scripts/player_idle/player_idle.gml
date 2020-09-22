function player_idle(){
	//calculate movement
	calc_movement();

	//check state
	if(hsp != 0)
	{
		state = player.moving;
	}
	
	//check jump
	if jump {
		jumped();
	}

	//apply movement
	collision();
}