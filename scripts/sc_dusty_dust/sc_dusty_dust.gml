
function sc_dusty_dust(){
		repeat(5)
	{
		with (instance_create_layer(x,bbox_bottom,"t_dirt",o_dust))
		{
		vsp = 0;
		}
	}
}