// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShakeScreen()
{
	 with (obj_shake)
	 {
		shake = true;
		shake_start_x = camera_get_view_x(view_camera[0]);
		shake_start_y = camera_get_view_y(view_camera[0]);
		target_shake_x = irandom_range(-shake_range, shake_range);
		target_shake_y = irandom_range(-shake_range, shake_range);
	 }

}