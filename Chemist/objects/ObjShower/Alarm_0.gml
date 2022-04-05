/// @description Insert description here
// You can write your code in this editor

global.hasWon = true;

draw_set_font(comicsans);

global.curTime = oHighScoreTable.timer / (room_speed/2);

room_goto(highScores);
audio_stop_sound(mainMusic);
