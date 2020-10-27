// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_in_floor(argument0, argument1, argument2) {

	var pos = tilemap_get_at_pixel(argument0,argument1,argument2);
	if (pos > 0)
	{
		if (pos == 1) return (argument2 mod TILE_SIZE); //solid block, would end up returning true anyway but this is FASTER, GOTTAGOFAST.
		var thefloor = global.heights[(argument1 mod TILE_SIZE) + pos*TILE_SIZE];
		return ((argument2 mod TILE_SIZE) - thefloor);
	} else return -(TILE_SIZE - (argument2 mod TILE_SIZE))
}