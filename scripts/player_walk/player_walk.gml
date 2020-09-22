// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_walk(){
	//calculate movement
	calc_movement();

	//check if falling off ledge
	var side = bbox_bottom;
	var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + 1);
	var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + 1);

	if t1 == VOID and t2 == VOID
	{
		state = player.jump;	
		jumps = jumps_initial;
	}

	if jump 
	{
		jumped();
	}

	//apply movement
	collision();
}