var up = keyboard_check_pressed(ord("W"));
var down = keyboard_check_pressed(ord("S"));
var accept = keyboard_check_pressed(vk_enter);


if (up and image_index > 0) {
	image_index--;
}
if (down and image_index < 4) {
	image_index++;
}

if image_index == 0 and accept {
	room_goto(Room1);
} 
if image_index == 1 and accept {
	room_goto(Controls2);
} 
if image_index == 2 and accept {
	room_goto(highScores);
} 
if image_index == 3 and accept {
	room_goto(Credits);
} 
if image_index == 4 and accept {
	game_end();
}

	
