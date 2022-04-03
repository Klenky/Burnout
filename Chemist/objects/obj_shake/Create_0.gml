/// @description Insert description here
// You can write your code in this editor
shake = false;

timer = 0; 

shake_start_x = 0;
shake_start_y = 0;

shake_speed = .33;

randomize();

shake_range = 60;

shake_length = room_speed * .5; // shake for 5 seconds

current_shake_length = 0;

global.shakeTrig = false;

center_h = camera_get_view_width(view_camera[0])/2;
center_v = camera_get_view_height(view_camera[0])/2;

new_hor = 0;
new_ver = 0;
