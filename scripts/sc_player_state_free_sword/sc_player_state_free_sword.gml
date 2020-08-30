function sc_player_state_free_sword() {
#region MOVEMENT
	hsp = lengthdir_x(input_magnitude * walk_speed, input_direction)
	vsp = lengthdir_y(input_magnitude * walk_speed, input_direction)
	sc_top_down_player_collision(); 
#endregion
#region ANMATION
	if (input_magnitude != 0)
	{
		direction = input_direction; 
		sprite_index = s_penguin_run_sword; 
		image_speed = 1;
		if (!instance_exists(o_player_dust))
		{
		instance_create_layer(x,y,"l_player",o_player_dust);
		}
	}
	else sprite_index = s_penguin_idle_sword;
	var aimside = sign(mouse_x - x);
	if (aimside != 0) image_xscale = aimside;
#endregion
#region ACTIVATE ENTITIES
	if (key_activate)
	{
		var _activateX = lengthdir_x(10,direction);
		var _activateY = lengthdir_y(10,direction)
		activate = instance_position(x+_activateX, y+_activateY,o_parent_entities)
		if (activate == noone or activate.entity_activate_script == -1)
		{
			state = sc_player_state_free_sword; 
		}
		else
		{
			sc_execute_array(activate.entity_activate_script,activate.entity_activate_args);
			if (activate.entity_npc)
			{
				with (activate)
				{
				direction =	point_direction(x,y,other.x,other.y); 
				image_index = CARDINAL_DIR	
				}
			}
		}
	}
#endregion


}
