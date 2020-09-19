/// @description Control Player State
#region Set up controls for player
right = keyboard_check(vk_right) or keyboard_check(ord("A"));
left = keyboard_check(vk_left) or keyboard_check(ord("D"));
up = keyboard_check(vk_up) or keyboard_check(ord("W"));
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
up_release = keyboard_check_released(vk_down) or keyboard_check_released(ord("W"));
#endregion

#region State Machine
#region Player Movement
switch (state)
{
	case player.moving:
	if(hsp != 0)
	{
		image_xscale = sign(hsp);
	}
	if(right or left)
	{
		hsp += (right - left) * acceleration;
		hsp += clamp(hsp, -max_speed, max_speed);
	}
	else
	{
		apply_friction(acceleration);
	}
	
	break;
}
#endregion
#endregion

collision();