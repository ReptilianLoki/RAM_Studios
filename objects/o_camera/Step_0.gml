/// @desc Moving Camera 

//update destination
if instance_exists(follow_object)
{
	xTo = follow_object.x; 
	yTo = follow_object.y; 
}

//update object position
x += (xTo - x) / 15; 
y += (yTo - y) / 15; 

//keeps camera center in the room
x = clamp(x,view_width_half,room_width - view_width_half);
y = clamp(y,view_height_half,room_height - view_height_half);

//screen shake 
x += random_range(-shake_remain,+shake_remain); 
y += random_range(-shake_remain,+shake_remain); 
shake_remain = max(0,shake_remain - ((1/shake_length) * shake_magnitude)); 

//
camera_set_view_pos(cam, x - view_width_half, y - view_height_half); 

if (layer_exists("Hills"))
{
	layer_x("Hills",x/1.5);	
}

if (layer_exists("Cacti"))
{
	layer_x("Cacti",x/3);	
}