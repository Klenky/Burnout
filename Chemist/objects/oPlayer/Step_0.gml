/// @description Insert description here
// You can write your code in this editor
health = 1;


timer += 1;



var xDirection =  keyboard_check(ord("D")) -  keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x,y +1, oWall);
var onTheOil = place_meeting(x, y+15, oil_slick);

//var overTheOil = place_meeting(x, y+15, oil_slick);


if (xDirection !=0) image_xscale = xDirection;

xSpeed = xDirection * spd;
ySpeed++;

if (onTheGround) {
	if (jump) {
		xSpeed += xSpeed;
		x+=xSpeed;
		ySpeed = -15;
	}
}

if (place_meeting(x+ xSpeed, y, oWall)) {
	while (!place_meeting(x+ sign(xSpeed), y, oWall)) {
		x += sign(xSpeed);
	}
	
	xSpeed = 0;
}

x+=xSpeed;



if (onTheOil) {
	
	xSpeed += xSpeed;
	x+=xSpeed;
	
	//if (jump & overTheOil) {
		//x+=xSpeed;
		//y+=ySpeed;
		//ySpeed = -15;
	//}
}

if (place_meeting(x, y + ySpeed, oWall)) {
	while (!place_meeting(x, y+ sign(ySpeed), oWall)) {
		y +=sign(ySpeed);
	}
	
	ySpeed = 0;
}




y+=ySpeed;

