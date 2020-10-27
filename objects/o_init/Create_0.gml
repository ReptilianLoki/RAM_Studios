/// @description Game Setup
//Collision tiles
//Add all tiles to the screen
#macro TILE_SIZE 32
tiles = sprite_get_width(s_Col) / TILE_SIZE
heightstoget = tiles * TILE_SIZE;


//Make Tile layer
var layerid = layer_create(0,"Tiles");
tilemapid = layer_tilemap_create(layerid,0,0,t_Collision,tiles,1);

//Create Tiles
for (var i = 0; i <= tiles; i++)
{
	tilemap_set(tilemapid, i, i, 0);
	show_debug_message("Tile " + string(i) + " set");
}