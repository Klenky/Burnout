/// @description Insert description here
// You can write your code in this editor
// needs to be room1 in main branch


if (room == highScores) {
show_debug_message("has won room: " + string(global.hasWon));
	if (global.hasWon == true) {
		name = get_string("Please enter your name", " ");
		//ds_list_sort(bestTimes, false);
		high_score[highScoreIndex][0] = global.curTime;
		high_score[highScoreIndex][1] = name;
		//ds_list_add(bestTimes, new playerStruct (name, global.curTime) );
		//ds_list_struct_sort(bestTimes, playerStruct, true);
		//ds_list_sort(bestTimes, true);
		highScoreIndex++;
		
		array_sort(high_score, function(a,b) {
			return a[0] - b[0];
		});
		
		global.hasWon = false;
	}
	
}



