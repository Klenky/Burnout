/// @description Insert description here
// You can write your code in this editor

var onConveyorL = place_meeting(x, y + 1, ObjConveyorL);
yspeed++;
xspeed = spd;
if (onConveyorL)
{
	xspeed += xspeed *0.3;
}
x += xspeed;

if (place_meeting( x, y + yspeed, obj_floor))
{
	while (!place_meeting(x, y+sign(yspeed), obj_floor)) {
		y+=sign(yspeed);
	}
	
	yspeed = 0;
}

y += yspeed;
