/// @description Initialize Player Variables

//speeds
hsp = 0;
vsp = 0;
max_hsp = 2;
max_slide = 4
walk_spd = 0.5;
hsp_decimal = 0;
vsp_decimal = 0;
jump_spd = -6;
jump_dampner = 3;
jumps_initial = 2;
jumps = jumps_initial;

//friction
drag = .12;

//stretching
scale_x = 1;
scale_y = 1;
scale_min = 0.75;
scale_max = 1.25;
scale_decay = 0.2;

//facing direction
facing = 1;

//player health
hp = 5;

enum player
{
	idle,
	moving,
	jump,
	slide,
	hook
}

state = player.idle;