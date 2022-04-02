/// @description Insert description here
// You can write your code in this editor

var onTheGround = place_meeting(x,y +1, oWall);

ySpeed++;
y+= ySpeed * (spd * 0.05) ;


if (onTheGround) {
	spd = 0;
}
