#region CAMERA POSITION
//destination (in between mouse cursor and player) 
if instance_exists(follow_object)
{
	xTo = mean(follow_object.x,follow_object.x,mouse_x);
	yTo = mean(follow_object.y,follow_object.y,mouse_y);
}
//current position TO destination
x += (xTo-x)/15;
y += (yTo-y)/15;
//keep in center of room
x = clamp(x,view_half_width,room_width-view_half_width);
y = y;
camera_set_view_pos(cam,x-view_half_width,y-view_half_height);
#endregion