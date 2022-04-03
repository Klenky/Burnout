/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player))
{
	if keyboard_check_pressed(ord("E"))
	{
		instance_create_layer(6700, 482, "Instances", ObjWater1);
		global.turnitdown = true;
	}
}

if global.winTrig = true
{
	if alarm[0] == -1
	{
		alarm_set(0, 30);
	}
}
