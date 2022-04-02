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
var onTheGround = place_meeting(x, y+1, obj_floor);			// check for ground variable / returns 1 or 0
var jump = keyboard_check_pressed(vk_space);				// jump button check
var onTheOil = place_meeting(x, y+1, ObjOilSlick);			// check for oil under the player
var onConveyorR = place_meeting(x, y + 1, ObjConveyorR);	// checks for Right running conveyor under player
var onConveyorL = place_meeting(x, y + 1, ObjConveyorL);	// checks for Left running conveyor under player 


if (xDirection !=0) image_xscale = xDirection

xspeed = xDirection * spd;
image_speed = xDirection * 1;
yspeed +=0.8;

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

// jump speed in the air after jumping from a right moving conveyor belt
if (inTheAir == true && lastTouchConveyorR == true) {
	
		switch(xDirection) {
			case 1:	xspeed += xspeed * 0.3; break;
			case -1: xspeed -= xspeed - 4; break;
			case 0: xspeed -= xspeed - 4; break;
		}
		x += xspeed;
}
// same as above but for the left movement conveyor
if (inTheAir == true && lastTouchConveyorL == true) {
		switch(xDirection) {
			case 1: xspeed -= xspeed + 4; break;	
			case -1: xspeed += xspeed *0.3; break;
			case 0: xspeed += xspeed *0.3; break;					
		}	
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
if (place_meeting( x + xspeed, y, obj_wallBreakable1))
{
	while (!place_meeting(x+sign(xspeed), y, obj_wallBreakable1)) {
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

if (onConveyorR) 
{
	if xDirection = 1
	{
	xspeed += xspeed * 0.3;
	if (jump)
	{
		yspeed = -15;		// this sets max height for jump, change for height adjustment
		
	}
	
	
	}
	
	if xDirection = 0
	{
		xspeed -= xspeed - 4;
	}
	if xDirection = -1
	{
		xspeed -= xspeed - 4;
	}
	x += xspeed;
}

if (onConveyorL) 
{
	if xDirection = 1
	{
	xspeed -= xspeed + 4;
	
	 
	}
	
	if xDirection = 0
	{
		xspeed -= xspeed + 4;
	}
	if xDirection = -1
	{
		
		xspeed += xspeed *0.3;
		if (jump)
	{
		yspeed = -15;		// this sets max height for jump, change for height adjustment
		
	}
	else
	{
		speed = 0;
	}
	}
	x += xspeed;
}



// checks for collision of walls that are horizontal (floor), makes the player stop falling
if (place_meeting( x, y + yspeed, obj_floor))
{
	while (!place_meeting(x, y+sign(yspeed), obj_floor)) {
		y+=sign(yspeed);
	}
	
	yspeed = 0;
}


// updates the falling every update
y += yspeed;




// player death
if (obj_checkpoints_save.isDead) {
	audio_play_sound(Aud_Explosion3, 10, false);
	instance_destroy(obj_player_fire);
	instance_destroy(obj_player);	
	
}

if place_meeting(x,y,ObjFlag)
{
	ObjFlag.image_index = 1;
	global.checkpoint1 = true;
}

if place_meeting(x,y,ObjBarrelTrig)
{
	global.barrelFallTrig = true;
}


