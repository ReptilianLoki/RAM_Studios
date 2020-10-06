/// collision();
function sc_collision() {
	//Is my middle center touching the floor at the start of this frame
	var grounded = (sc_in_floor(global.tilemap, x, bbox_left + 1) >= 0);
	
	//apply carried over decimals
	hsp += hsp_decimal;
	vsp += vsp_decimal;

	//floor decimals
	//save and subtract decimals
	hsp_decimal = hsp - (floor(abs(hsp)) * sign(hsp));
	hsp -= hsp_decimal;
	vsp_decimal = vsp - (floor(abs(vsp)) * sign(vsp));
	vsp -= vsp_decimal;

	//horizontal collision
	var side;
	//determine which side to test
	if hsp > 0 side = bbox_right else side = bbox_left;

	//check top and bottom of side
	var t1 = tilemap_get_at_pixel(global.map, side + hsp, bbox_top);
	var t2 = tilemap_get_at_pixel(global.map, side + hsp, bbox_bottom);
	
	//Ignore bottom side tiles if on a slope
	if(tilemap_get_at_pixel(global.tilemap, x, bbox_bottom) > 1) t2 = 0;

	if	((t1 != VOID) and (t1 != PLATFORM)) or
		((t2 != VOID) and (t2 != PLATFORM)) {
		//collision found
		if (hsp > 0) x = x - (x mod global.tile_size) + global.tile_size - 1 - (side - x);
		else x = x - (x mod global.tile_size) - (side - x);
		hsp = 0;
	}
	x += hsp;

	//vertical collision
	var side;
	
	if(tilemap_get_at_pixel(global.tilemap, x, bbox_bottom + vsp) <= 1)
	{
		//determine which side to test
		if vsp > 0 side = bbox_bottom else side = bbox_top;

		//check left and right side
		var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + vsp);
		var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + vsp);
		var t3 = tilemap_get_at_pixel(global.map, bbox_left, bbox_bottom);
		var t4 = tilemap_get_at_pixel(global.map, bbox_right, bbox_bottom);

		if	((t1 != VOID and (vsp > 0 or t1 != PLATFORM)) and (t3 != PLATFORM)) or
			((t2 != VOID and (vsp > 0 or t2 != PLATFORM)) and (t4 != PLATFORM)) {
			//collision found
			if (vsp > 0) y = y - (y mod global.tile_size) + global.tile_size - 1 - (side - y);
			else y = y - (y mod global.tile_size) - (side - y);
			vsp = 0;
			//death tile check
			if t1 == DEATH or t2 == DEATH or y > room_height {
				game_restart();
			}
		}
	}
	
	var floor_dist = sc_in_floor(global.tilemap, x, bbox_bottom + vsp);
	if(floor_dist >= 0)	
	{
		y += vsp;
		y -= (floor_dist + 1);
		vsp = 0;
		floor_dist = -1;
	}

	y += vsp;
	
	//Walk down slopes
	if(grounded)
	{
		y += abs(floor_dist) - 1;
		//if at base of current tile
		if((bbox_bottom mod global.tile_size) == global.tile_size - 1)
		{
			//if the slope continues
			if(tilemap_get_at_pixel(global.tilemap, x, bbox_bottom + 1) > 1)
			{
				// move there
				y += abs(sc_in_floor(global.tilemap, x, bbox_bottom));
			}
		}
	}
}
