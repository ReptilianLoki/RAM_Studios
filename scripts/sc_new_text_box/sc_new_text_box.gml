/// @arg Message
/// @arg Background
/// @arg [Responses]
function sc_new_text_box() {


	var _obj;

	if (instance_exists(o_text)) _obj = o_text_queued; else _obj = o_text; 
	with instance_create_layer(0,0,"l_player",_obj)
	{
		message = argument[0];
		if (instance_exists(other)) orgin_instance = other.id else orgin_instance = noone; 
		if (argument_count > 1) background = argument[1]; else background = 1; 
		if (argument_count > 2)
		{
			//trim markers from responses
			responses = argument[2]; 
			for (var i = 0; i < array_length_1d(responses); i++)
			{
				var _marker_position = string_pos(":",responses[i]); 
				response_script[i] = string_copy(responses[i],1,_marker_position-1);
				response_script[i] = real(response_script[i]);
				responses[i] = string_delete(responses[i],1,_marker_position);
			}
	
	
		}
		else
		{
			responses = [-1];
			response_script = [-1];
		}
	}

	with (o_player_top_down)
	{
		if (state != sc_player_state_locked)
		{
			last_state = state; 
			state = sc_player_state_locked; 
		}
	}


}
