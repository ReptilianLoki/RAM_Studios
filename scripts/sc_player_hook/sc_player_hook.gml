function sc_player_hook()
{
	if (jump) 
	{
		//x -= 5;
		//y -= 5; 
		jumps = jumps_initial;
		sc_jumped();
		//state = player.idle;
	} 
	if(down)
	{
		state = player.idle;
	}
}