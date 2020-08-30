//added for switching between rooms
//"T" for top_down and "S" for side_scroller
event_inherited();
if (global.picked_up_sword = 1) {state = sc_player_state_free_sword;}

#region PLAYER INPUT
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_activate = keyboard_check(vk_space)
input_direction = (point_direction(0,0,key_right-key_left,key_down-key_up)); 
input_magnitude = (key_right-key_left !=0) or (key_down-key_up !=0); 
#endregion

script_execute(state);
depth = -bbox_bottom; 



//temp
if (keyboard_check(ord("P"))) and (state = sc_player_state_free)
{ 
	state = sc_player_state_free_sword;
}
if (keyboard_check(ord("O"))) and (state = sc_player_state_free_sword)
{
	state = sc_player_state_free;
}
