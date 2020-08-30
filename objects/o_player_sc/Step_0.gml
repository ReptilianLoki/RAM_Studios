/// @description Execute Player States
event_inherited();
//#region Set Up Controls
//up = (keyboard_check(vk_up) or keyboard_check(ord("W")));
//left = (keyboard_check(vk_left) or keyboard_check(ord("A")));
//right = (keyboard_check(vk_right) or keyboard_check(ord("D")));
//// down = (keyboard_check(vk_down) or keyboard_check(ord("S")));
//up_release = (keyboard_check_released(vk_up) or keyboard_check_released(ord("W")));
//#endregion

//#region Player State Machine
//switch state
//{
//	#region Player Move
//	case player.move:
//	// Check player animation
//	sc_change_image();
	
//	// Move Player
//	sc_move(o_solid);
	
//	// Check if Player is Stuck
//	sc_check_stuck(o_solid);
	
//	break;
//	#endregion
	
//	#region Player Hurt
//	case player.hurt:
	
//	break;
//	#endregion
	
//	#region Player Death
//	case player.death:
	
//	break;
//	#endregion
//}
//#endregion

//exectute state
//if !instance_exists(o_fade) {
//	script_execute(states_array[state]);
//} else {
//	//stop animations playing
//	if state != states.DIE image_index = 0;
//}

script_execute(states_array[state]);