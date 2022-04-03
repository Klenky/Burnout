/// @description Insert description here
// You can write your code in this editor

//var bestTimes = ds_map_create();
//var playerTime = (oPlayer.timer) / room_speed;

show_debug_message("player collision 1: " + string(global.hasWon));
global.hasWon = true;
show_debug_message("player collision 1: " + string(global.hasWon));
draw_set_font(comicsans);

//if (string(name).length() > 3) {string(name).length = 3;}
//highscore_add(name, (oPlayer.timer) / room_speed);

//if (bestTimes

global.curTime = oPlayer.timer / room_speed;


room_goto(highScores);
