/// @description Insert description here
// You can write your code in this editor

var onConveyorL = place_meeting(x, y + 1, ObjConveyorL);
var onConveyorR = place_meeting(x,y+1, ObjConveyorR);
yspeed++;
xspeed = 3*spd;

if (onConveyorL)
{
	xspeed += xspeed *0.3;
}

if (onConveyorR) {
	xspeed -= xspeed *0.3;
}

if (place_meeting(x, y+1, ObjBarrelTurn)) {
	spd = -1;	
	changeDir = true;
}
show_debug_message(place_meeting(x, y+1, ObjBarrelTurn))
if (changeDir) {
	x -= (xspeed * spd);
} else x += (xspeed * spd);

if (place_meeting( x, y + yspeed, obj_floor))
{
	while (!place_meeting(x, y+sign(yspeed), obj_floor)) {
		y+=sign(yspeed);
	}
	
	yspeed = 0;
}

y += yspeed;
