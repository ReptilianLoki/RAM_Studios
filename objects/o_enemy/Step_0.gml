/// @description Enemy State

vsp = vsp + SPD_GRAVITY;

//Horizontal Collision
if (place_meeting (x+hsp,y,o_wall_jump))
{
	while (!place_meeting (x+sign(hsp),y,o_wall_jump))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//vertical collision
if (place_meeting(x,y+vsp,o_wall_jump))
{
	while (!place_meeting(x,y+sign(vsp),o_wall_jump))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

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





