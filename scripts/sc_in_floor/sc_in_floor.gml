///@description Checks to see if position is below the floor height of a given tile, and returns how deep in floor
function sc_in_floor(tilemap, x_pos, y_pos){
	var pos = tilemap_get_at_pixel(tilemap, x_pos, y_pos);
	if(pos >= 0)
	{
		//Solid block check
		if(pos == 1) return (y_pos mod global.tile_size);
		//Checking player height to tile height
		var the_floor = global.heights[(x_pos mod global.tile_size) + (pos * global.tile_size)];
		return ((y_pos mod global.tile_size) - the_floor);
	} else return -(global.tile_size - (y_pos mod global.tile_size))
}