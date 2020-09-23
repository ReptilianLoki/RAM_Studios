function sc_screen_shake(argument0, argument1)
{
	/// @desc ScreenSHAKE! 
	/// @arg MAGNITUDE sets the strength of the SHAKE
	/// @arg FRAMES sets the length of time the SHAKE lasts (60 = 1 second)
	with (global.instance_camera)
	{
		if (argument0 > shake_remain) 
		{
			shake_magnitude = argument0;
			shake_remain = shake_magnitude; 
			shake_length = argument1; 
		}
	}


}
