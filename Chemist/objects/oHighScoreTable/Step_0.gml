/// @description Insert description here
// You can write your code in this editor
// needs to be room1 in main branch
if (room == highScores) {
	if (global.hasWon == true) {
		name = get_string("Please enter your name", " ");
		//ds_list_sort(bestTimes, false);
		ds_list_add(bestTimes, new playerStruct (name, global.curTime) );
		ds_list_sort(bestTipTime, false);
		global.hasWon = false;
	}
	
}
