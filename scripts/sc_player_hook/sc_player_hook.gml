function sc_player_hook()
{
	if (jump) 
	{
		x -= 5;
		y -= 5; 
		sc_jumped();
		state = player.idle;
	} 

}