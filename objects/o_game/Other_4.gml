/// @description Get Tile Map
global.map = layer_tilemap_get_id("t_collisions");
global.tilemap = layer_tilemap_get_id("t_angle_collisions");
audio_sound_gain(sn_menu_music,0,1000);
audio_play_sound(sn_game_music,1,true);