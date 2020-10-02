/// @description Control Player State
#region Set up controls for player
left		= keyboard_check(vk_left) or keyboard_check(ord("A"));
right		= keyboard_check(vk_right) or keyboard_check(ord("D"));
down		= keyboard_check(vk_down) or keyboard_check(ord("S"));
//up			= keyboard_check(vk_up) or keyboard_check(ord("W"));
slide		= keyboard_check_pressed(ord("Z"));
jump		= keyboard_check_pressed(vk_space);
jump_held	= keyboard_check(vk_space);
//down = keyboard_check(vk_down) or keyboard_check(ord("S"));
//up_release = keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check_pressed(vk_space);
#endregion

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
	repeat(5)
	{
		with (instance_create_layer(x,bbox_bottom,"t_dirt",o_dust))
		{
		vsp = 0;
		}
	}
	case player.slide:
	sc_player_slide();
	break;
	
	case player.hook:
	sc_player_hook();
}
#endregion
