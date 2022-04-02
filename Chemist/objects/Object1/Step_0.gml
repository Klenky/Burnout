/// @description Insert description here
// You can write your code in this editor

moveLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
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


