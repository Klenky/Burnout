/// @description Insert description here
// You can write your code in this editor



if playerOnFire = true
{
	if soundTrig = false
	{
		audio_play_sound(Aud_Fire, 8, true)
		audio_sound_gain(Aud_Fire, 1, 0)
		soundTrig = true;
	}
}

// takes keyboard input for left and right movement
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A")); 
var onTheGround = place_meeting(x, y+1, obj_wall);	// check for ground variable / returns 1 or 0
var jump = keyboard_check_pressed(vk_space);		// jump button check
var onTheOil = place_meeting(x, y+1, ObjOilSlick);	// check for oil under the player


if (xDirection !=0) image_xscale = xDirection

xspeed = xDirection * spd;
yspeed++;

// allows player to jump if in contact with ground object
if(onTheGround)
{
	
	inTheAir = false;		// if on ground, not in the air
	lastTouchOil = false;	// if the player touches the ground, then last ground touched wasnt oil
	if (jump)
	{
		yspeed = -15;		// this sets max height for jump, change for height adjustment
		inTheAir = true;	// since the player is in the air, in the air is true
	}
}


// this check controls if the player jumped from an oil slick to add the speed for the jump
if (inTheAir == true && lastTouchOil == true)
{
	xspeed += xspeed;
	x += xspeed;
}

// checks for collision of walls that are verticle, makes the player stop in place
if (place_meeting( x + xspeed, y, obj_wall))
{
	while (!place_meeting(x+sign(xspeed), y, obj_wall)) {
		x+=sign(xspeed);
	}
	xspeed = 0
}

// checks for collision of the breakable wall, so the player just doesnt go through it
if (place_meeting( x + xspeed, y, obj_wallBreakable))
{
	while (!place_meeting(x+sign(xspeed), y, obj_wallBreakable)) {
		x+=sign(xspeed);
	}
	xspeed = 0
}


// updates the player movement (left and right) every frame
x += xspeed;

// checks for the player being on top of oil and doubles their movement speed
if (onTheOil) {
	xspeed += xspeed;
	x += xspeed;
	lastTouchOil = true; // set to true to help check for when the player should have speed jump
}


// checks for collision of walls that are horizontal (floor), makes the player stop falling
if (place_meeting( x, y + yspeed, obj_wall))
{
	while (!place_meeting(x, y+sign(yspeed), obj_wall)) {
		y+=sign(yspeed);
	}
	
	yspeed = 0;
}


// updates the falling every update
y += yspeed;




// player death
if (isDead) {
	audio_play_sound(Aud_Explosion3, 10, false);
	alarm_set(1, 10);
	instance_destroy(obj_player);	
}



