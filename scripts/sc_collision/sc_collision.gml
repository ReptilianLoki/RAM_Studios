function sc_collision(){
	//get previous y position
	prev_y = y;
	//Re apply fractions
	hsp += hsp_fraction;
	vsp += vsp_fraction;
	
	//Store and Remove fractions
	//Important: go into collision with whole integers ONLY!
	hsp_fraction = hsp - (floor(abs(hsp)) * sign(hsp));
	hsp -= hsp_fraction;
	vsp_fraction = vsp - (floor(abs(vsp)) * sign(vsp));
	vsp -= vsp_fraction;
	
	
	//Horizontal Collision
	if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
	p1 = tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top);
	p2 = tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom); 
	if (tilemap_get_at_pixel(tilemap,x,bbox_bottom) > 1) p2 = 0; //ignore bottom side tiles if on a slope.
	if (p1 == 1) || (p2 == 1) //Inside a tile with collision
	{
		if (hsp > 0) x = x - (x mod TILE_SIZE) + (TILE_SIZE-1) - (bbox_right - x);
		else x = x - (x mod TILE_SIZE) - (bbox_left - x);
		hsp = 0;
	}
	x += hsp;
	
	//Vertical Collision
	//is this not a slope?
	if (tilemap_get_at_pixel(tilemap,x,bbox_bottom+vsp) <= 1)
	{
		if (vsp >= 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
		p1 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp) 
		p2 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp)
		if (p1 == 1) || (p2 == 1)
		{
			if (vsp >= 0) y = y - (y mod TILE_SIZE) + (TILE_SIZE-1) - (bbox_bottom - y);
			else y = y - (y mod TILE_SIZE) - (bbox_top - y);
			vsp = 0;
		}
	}
	var floordist = sc_in_floor(tilemap,x,bbox_bottom+vsp)
	if (floordist >= 0)
	{
		y += vsp;
		y -= (floordist+1);		
		vsp = 0;
		floordist = -1;
	}
	y += vsp;
	
	
	//Walk down slopes
	if (grounded)
	{
		y += abs(floordist)-1;
		//if at base of current tile
		if ((bbox_bottom mod TILE_SIZE) == TILE_SIZE-1)
		{
			// if slope continues
			if (tilemap_get_at_pixel(tilemap,x,bbox_bottom+1) > 1)
			{
				//move there
				y += abs(sc_in_floor(tilemap,x,bbox_bottom+1));
			}
			
		}
		sc_check_slide();
		if(left or right)
		{
			sc_check_inclinedecline(y);
		}
	}
}
