/// @description Control Player State
#region Set up controls for player
left		= keyboard_check(vk_left) or keyboard_check(ord("A"));
right		= keyboard_check(vk_right) or keyboard_check(ord("D"));
down		= keyboard_check(vk_down) or keyboard_check(ord("S"));
//up			= keyboard_check(vk_up) or keyboard_check(ord("W"));
slide		= keyboard_check(ord("Z"));
jump		= keyboard_check_pressed(vk_space);
jump_held	= keyboard_check(vk_space);
//down = keyboard_check(vk_down) or keyboard_check(ord("S"));
//up_release = keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check_pressed(vk_space);
#endregion

#region State Machine
switch (state)
{
	case player.idle:
	sc_player_idle();
	break;
	
	case player.moving:
	sc_player_walk();
	break;
	
	case player.jump:
	sc_player_jump();
	break;
	
	case player.slide:
	sc_player_slide();
	break;
	
	case player.hook:
	sc_player_hook();
	break;
}
#endregion

if(slide_timer <= 0 && slide_pause == false)
{
	slide_pause = true;
	slide_timer = TIMER;
}
else
{
	slide_timer--;
}

////Is my middle center touching the floor at the start of this frame
//var grounded = (sc_in_floor(global.tilemap, x, bbox_left + 1) >= 0);

////Jump
//if(grounded || (sc_in_floor(global.tilemap, bbox_left, bbox_bottom+ 1) >= 0) || (sc_in_floor(global.tilemap, bbox_right, bbox_bottom+ 1)))
//{
//	if(jump)
//	{
//		vsp = -jump_spd;
//		grounded = false;
//	}
//}
