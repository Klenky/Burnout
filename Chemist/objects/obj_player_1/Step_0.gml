/// @description Insert description here
// You can write your code in this editor
delta_ms = delta_time / 1000000;

var x_speed = keyboard_check(vk_right) - keyboard_check(vk_left);
var y_speed = keyboard_check(vk_down) - keyboard_check(vk_up);

hspeed = x_speed * delta_ms * 300;
vspeed = y_speed * delta_ms * 300;

speed = clamp (speed, 0, delta_ms * 300);

// angle of player
image_angle = direction;