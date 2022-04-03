var up = keyboard_check_pressed(ord("W"));
var down = keyboard_check_pressed(ord("S"));
var accept = keyboard_check_pressed(vk_enter);


if (up && image_index > 0) {
	image_index--;
}

if (down && image_index <1) {
	image_index++;
}


if (image_index == 0 && accept) {
	room_goto(mainMenu);
} 
if (image_index == 1 && accept) {
	game_end();
}

	
	
