/// @description Checks if Player is Stuck Against Given Solid
/// @param collision_object
function sc_check_stuck(argument0) {
	var collision_object = argument0;

	if(place_meeting(x, y, collision_object))
	{
		for(var i = 0; i < 1000; i++)
		{
		#region Right
			if(!place_meeting(x + i, y, collision_object))
			{
				x += i;
				break;
			}
		#endregion
		
		#region Left
			if(!place_meeting(x - i, y, collision_object))
			{
				x -= i;
				break;
			}
		#endregion
		
		#region Up
			if(!place_meeting(x, y - i, collision_object))
			{
				y -= i;
				break;
			}
		#endregion
		
		#region Down
			if(!place_meeting(x, y + i, collision_object))
			{
				y += i;
				break;
			}
		#endregion
		
		#region Top Right
			if(!place_meeting(x + i, y - i, collision_object))
			{
				x += i;
				y -= i;
				break;
			}
		#endregion
		
		#region Top Left
			if(!place_meeting(x - i, y - i, collision_object))
			{
				x -= i;
				y -= i;
				break;
			}
		#endregion
		
		#region Bottom Right
			if(!place_meeting(x + i, y + i, collision_object))
			{
				x += i;
				y += i;
				break;
			}
		#endregion
		
		#region Bottem Left
			if(!place_meeting(x - i, y + i, collision_object))
			{
				x -= i;
				y += i;
				break;
			}
		#endregion
		}
	}


}
