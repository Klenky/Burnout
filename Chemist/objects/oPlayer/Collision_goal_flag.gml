/// @description Insert description here
// You can write your code in this editor
draw_set_font(comicsans);
name = get_string("Please enter your name", " ");
highscore_add(name, oPlayer.timer);

room_goto(highScores);
