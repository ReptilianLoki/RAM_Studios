/// @description Initialize Player Variables

max_speed = 4;
hsp = 0;
vsp = 0;
hsp_decimal = 0;
vsp_decimal = 0;
acceleration = 1;
gravity_acceleration = .5;
jump_height = -9

enum player
{
	moving,
}

state = player.moving;