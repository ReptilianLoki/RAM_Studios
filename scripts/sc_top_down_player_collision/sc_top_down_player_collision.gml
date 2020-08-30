function sc_top_down_player_collision() {
	var _collision = false; 
	//horizontal collision 
	if tilemap_get_at_pixel(collision_tiles,x+hsp,y)
	{
		x -= x mod TILE_SIZE;
		//mod function returns REMAINDER 
		if (sign(hsp) == 1) 
		{
			x += (TILE_SIZE) - 1; 
		}
		hsp = 0;
		_collision = true; 
	}
	//horizontal move commit
	x += hsp;
	//vertical collision
	if tilemap_get_at_pixel(collision_tiles,x,y+vsp)
	{
		y -= y mod TILE_SIZE;
		//mod function returns REMAINDER 
		if (sign(vsp) == 1)
		{
			y += (TILE_SIZE) - 1; 
		}
		vsp = 0;
		_collision = true; 
	}
	//horizontal move commit
	y += vsp;
	return _collision;


}
