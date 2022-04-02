/// @description Insert description here
// You can write your code in this editor

/*moveLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
moveRight = keyboard_check(ord("D")) || keyboard_check(vk_right);

vx = ((moveRight - moveLeft) * runSpeed);

x += vx;

if (moveLeft)
{
	dir = -1;
}

if (moveRight) {
	dir = 1
}

if (dir == -1) {
	image_xscale = -1;
}
else {
	image_xscale = 1;
}
*/

if playerOnFire = true
{
	if soundTrig = false
	{
		audio_play_sound(Aud_Fire, 8, true)
		audio_sound_gain(Aud_Fire, 1, 0)
		soundTrig = true;
	}
}

var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var onTheGround = place_meeting(x, y+1, obj_wall);
var jump = keyboard_check_pressed(vk_space);
var onTheOil = place_meeting(x, y+1, ObjOilSlick);


if (xDirection !=0) image_xscale = xDirection

xspeed = xDirection * spd;
yspeed++;

// allows player to jump if in contact with ground object
if(onTheGround)
{
	inTheAir = false;
	lastTouchOil = false;
	if (jump)
	{
		yspeed = -15;
		inTheAir = true;
	}
}

if (inTheAir == true && lastTouchOil == true)
{
	xspeed += xspeed;
	x += xspeed;
}


if (place_meeting( x + xspeed, y, obj_wall))
{
	while (!place_meeting(x+sign(xspeed), y, obj_wall)) {
		x+=sign(xspeed);
	}
	xspeed = 0
}

if (place_meeting( x + xspeed, y, obj_wallBreakable))
{
	while (!place_meeting(x+sign(xspeed), y, obj_wallBreakable)) {
		x+=sign(xspeed);
	}
	xspeed = 0
}

x += xspeed;

if (onTheOil) {
	
	xspeed += xspeed;
	x += xspeed;
	lastTouchOil = true;
	
	
}



if (place_meeting( x, y + yspeed, obj_wall))
{
	while (!place_meeting(x, y+sign(yspeed), obj_wall)) {
		y+=sign(yspeed);
	}
	
	yspeed = 0;
}

y += yspeed;



