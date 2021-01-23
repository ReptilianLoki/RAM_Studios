/// @description Enemy State

vsp = vsp ;
hsp = 0.25;

//Horizontal Collision

	if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
	p1 = tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top);
	p2 = tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom); 
	if (tilemap_get_at_pixel(tilemap,x,bbox_bottom) > 1) p2 = 0; //ignore bottom side tiles if on a slope.
	if (p1 == 1) || (p2 == 1) //Inside a tile with collision
	{
		if (hsp > 0) x = x - (x mod TILE_SIZE) + (TILE_SIZE-1) - (bbox_right - x);
		else x = x - (x mod TILE_SIZE) - (bbox_left - x);
		hsp = -hsp;
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

//Animation
if (!place_meeting(x,y+1,onWall))
{
	sprite_index = s_enemy_walking;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = s_enemy_walking;
	}
	else
	{
		sprite_index = s_enemy_standing;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
	

//Is my middle center touching the floor at the start of this frame?
grounded = (sc_in_floor(tilemap,x,bbox_bottom+1) >= 0);





