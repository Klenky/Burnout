/// @description Insert description here
// You can write your code in this editor

//var bestTimes = ds_map_create();
//var playerTime = (oPlayer.timer) / room_speed;


draw_set_font(comicsans);

//if (string(name).length() > 3) {string(name).length = 3;}
//highscore_add(name, (oPlayer.timer) / room_speed);

//if (bestTimes

global.curTime = oPlayer.timer / room_speed;

global.hasWon = true;
room_goto(highScores);
