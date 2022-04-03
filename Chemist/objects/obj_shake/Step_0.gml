/// @description Insert description here
// You can write your code in this editor

/***************************

DELETE AFTER TESTING

**************************/


new_hor = obj_player.x - center_h;
new_ver = obj_player.y - center_v;

if (keyboard_check_pressed(vk_shift))
{

	ShakeScreen();
	//if (alarm[0] < 0) alarm[0] = shake_speed;
	
	
}


/***************************

DELETE AFTER TESTING

**************************/

timer += delta_time / 1000000;

if (timer > 5 && timer < 10)
{
	//shake = true;
//	shake_start_x = x;
//	shake_start_y = y;
//	target_shake_x = irandom_range(-40, 40);
//	target_shake_y = irandom_range(-40, 40);
	//if (alarm[0] < 0) alarm[0] = shake_speed;
}

if (shake == true)
{

	if (current_shake_length > shake_length)
	{
		target_shake_x = camera_get_view_x(view_camera[0]) - shake_start_x;
		target_shake_y = camera_get_view_y(view_camera[0]) - shake_start_y;
		if (alarm[0] < 0) alarm[0] = 1/shake_speed;	
		alarm[1] = -1;
		current_shake_length = 0;
		show_debug_message(" stop shaking");
	}
		show_debug_message("shaking");
	// Lerps to new position
	camera_set_view_pos(view_camera[0], shake_start_x + (target_shake_x * shake_speed), shake_start_y + (target_shake_y * shake_speed));
	shake_start_x += obj_player.x - obj_player.xprevious;
	shake_start_y += obj_player.y - obj_player.yprevious;
	current_shake_length++;
	
	if (alarm[1] < 0) alarm[1] = 1/shake_speed;	
}

else
{
	camera_set_view_pos(view_camera[0], new_hor, new_ver);	
}




