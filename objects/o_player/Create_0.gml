/// @description  Macros, Variables, Tilemap
#macro SPD_WALK 0.25
#macro SPD_GRAVITY 0.4
#macro SPD_JUMP 8
#macro MAX_WALK 6
#macro FRICTION 0.5

hsp = 0;
vsp = 0;
hsp_fraction = 0;
vsp_fraction = 0;
slide_friction = 0.1;
is_sliding = false;
can_slide = true;
current_friction = FRICTION;
prev_y = y;
incline_friction = .93;
incline_walk_friction = .87;
decline_friction = 1.02;
hascontrol = true;
can_boost = true;
incline_check = false; 
onWall = 0;
grvWall = 0.1;
hspWJump = 4;
vspWJump = -5;
vspWMax = 4;
grv_final = SPD_GRAVITY;
vsp_max_final = MAX_WALK;
walljumpdelay = 0;
walljumpdelay_max = 17;
jumpbuffer = 0;

tilemap = layer_tilemap_get_id("Collision");

enum player
{
	idle, 
	moving,
	jump,
	slide
}

state = player.idle;
