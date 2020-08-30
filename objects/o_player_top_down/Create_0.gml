/// SET UP VARIABLES
event_inherited();
state = sc_player_state_free;
image_speed = 0;
hsp = 0;
vsp = 0;
walk_speed = 1.5; 
nearby = false;
collision_tiles = layer_tilemap_get_id(layer_get_id("l_collision"));

