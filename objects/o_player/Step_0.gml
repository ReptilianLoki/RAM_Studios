/// @description Control Player State
#region Set up controls for player
left		= keyboard_check(vk_left) or keyboard_check(ord("A"));
right		= keyboard_check(vk_right) or keyboard_check(ord("D"));
//up			= keyboard_check(vk_up) or keyboard_check(ord("W"));
//down		= keyboard_check(vk_down) or keyboard_check(ord("S"));
jump		= keyboard_check_pressed(vk_space);
jump_held	= keyboard_check(vk_space);
//down = keyboard_check(vk_down) or keyboard_check(ord("S"));
//up_release = keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check_pressed(vk_space);
#endregion

#region State Machine
switch (state)
{
	case player.idle:
	player_idle();
	break;
	
	case player.moving:
	player_walk();
	break;
	
	case player.jump:
	player_jump();
	break;
}
#endregion

