/// @description Insert description here
// You can write your code in this editor

if global.hasTnt = true
{
	if image_xscale = 1
	{
		instance_create_layer(x + 20, y, "Instances", ObjTNT)
		ObjTNT.speed = 6;
	}
	else
	{
		instance_create_layer(x - 20, y, "Instances", ObjTNT)
		ObjTNT.speed = -6;
	}
	
	global.hasTnt = false;
	alarm_set(0,120)
}

if global.hasTnt2 = true
{
	if image_xscale = 1
	{
		instance_create_layer(x + 20, y, "Instances", ObjTNT2)
		ObjTNT2.speed = 6;
	}
	else
	{
		instance_create_layer(x - 20, y, "Instances", ObjTNT2)
		ObjTNT2.speed = -6;
	}
	
	global.hasTnt2 = false;
	alarm_set(0,120)
}


//instance_create_layer(1069, 582, "Instances", ObjTNT)

