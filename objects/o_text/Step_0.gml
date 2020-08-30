/// @description Insert description here
lerp_progress += (1 - lerp_progress) / 50; 
text_progress += global.text_speed; 

x1 = lerp(x1,x1_target,lerp_progress); 
x2 = lerp(x2,x2_target,lerp_progress); 

// cycle thru responses 
key_up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
response_selected += (key_down - key_up); 
var _max = array_length_1d(responses) - 1
var _min = 0; 
if (response_selected > _max) response_selected = _min; 
if (response_selected < _max) response_selected = _min; 

if (keyboard_check_pressed(vk_space))
{
	var _message_length = string_length(message); 
	if (text_progress >= _message_length)
	{
		if (responses[0] != -1)
		{
			with (orgin_instance)
			{
				sc_dialouge_responses(other.response_script[other.response_selected]);
			}
		}
		instance_destroy(); 
		if instance_exists(o_text_queued)
		{
			with (o_text_queued) ticket --; 
			
		}
		else
		{
			with (o_player_top_down) state = last_state;
		}
	}
	else 
	{
		if (text_progress > 2)
		{
			text_progress = _message_length; 
		}
	}
}