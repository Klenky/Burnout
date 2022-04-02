/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	var xCam = clamp(obj_player.x - wCam / 6, 0, room_width - wCam/2)
	var yCam = clamp(obj_player.y - hCam / 3, 0, room_height - hCam/3)
}
else
{
	var xCam = clamp(obj_checkpoints_save.xSpawn[obj_checkpoints_save.currentSpawn] - wCam / 4, 0, room_width - wCam)
	var yCam = clamp(obj_checkpoints_save.ySpawn[obj_checkpoints_save.currentSpawn] - hCam / 4, 0, room_height - hCam)
}

var curX = camera_get_view_x(view_camera[0]);
var curY = camera_get_view_y(view_camera[0]);

var newX = lerp(curX, xCam, 0.1);
var newY = lerp(curY, yCam, 0.1);

camera_set_view_pos(view_camera[0], newX, newY);

//layer_x(layer_get_id("Background"), newX = 0.65);
//layer_y(layer_get_id("Background"), newY = 0.65);



