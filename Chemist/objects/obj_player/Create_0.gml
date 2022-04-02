/// @description Insert description here
// You can write your code in this editor

oilSpeed = 5;			// Variable to add on to normal speed when in touch with oil.
spd = 5;
xspeed = 0;
playerOnFire = true;	// Part 1 of trigger for fire sound
soundTrig = false;		// Part 2 of trigger for fire sound, ensures only plays once. 
yspeed = 0;				// Used to simulate gravity, makes player fall.
global.hasTnt = false;
inTheAir = false;
lastTouchOil = false;
