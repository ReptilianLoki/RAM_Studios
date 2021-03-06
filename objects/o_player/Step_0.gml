/// @description Control Player State
#region Set up controls for player

if (hascontrol)
{
left		= keyboard_check(vk_left) or keyboard_check(ord("A"));
right		= keyboard_check(vk_right) or keyboard_check(ord("D"));
jump		= keyboard_check(vk_up) or keyboard_check(ord("W"));
slide		= keyboard_check(vk_down) or keyboard_check(ord("S"));
boost       = keyboard_check_pressed(vk_shift); 
}
else
{
	right = 0; 
	left = 0;
	jump = 0;
	slide = 0;
}

//temp health test

if (keyboard_check_pressed(ord("K"))) 
{
	global.player_health = global.player_health - 0.25;
}

#endregion

//Is my middle center touching the floor at the start of this frame?
grounded = (sc_in_floor(tilemap,x,bbox_bottom+1) >= 0);

#region State Machine
switch (state)
{
	case player.idle:
	sc_player_idle();
	break;
	
	case player.moving:
	sc_player_walk();
	break;
	
	case player.jump:
	sc_player_jump();
	break;
	
	case player.slide:
	sc_player_slide();
	break;
}
#endregion

