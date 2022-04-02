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

if playerOnFire = true
{
	if soundTrig = false
	{
		audio_play_sound(Aud_Fire, 8, true)
		audio_sound_gain(Aud_Fire, 1, 0)
		soundTrig = true;
	}
}
*/
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var onTheGround = place_meeting(x, y+1, obj_wall);
var jump = keyboard_check(vk_space);

if (xDirection !=0) image_xscale = xDirection

runSpeed = xDirection * spd;
yspeed++;

if(onTheGround)
{
	if (jump)
	{
		yspeed = -15;
	}
}

if (place_meeting( x + runSpeed, y, obj_wall))
{
	while (!place_meeting(x+sign(runSpeed), y, obj_wall)) {
		x+=sign(runSpeed);
	}
	runSpeed = 0
}

x += runSpeed;

if (place_meeting( x, y + yspeed, obj_wall))
{
	while (!place_meeting(x, y+sign(yspeed), obj_wall)) {
		y+=sign(yspeed);
	}
	
	yspeed = 0;
}

y += yspeed;



