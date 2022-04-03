/// @description Insert description here
// You can write your code in this editor
// needs to be room1 in main branch
draw_set_font(arcade);

if (room == highScores) {
	if (global.hasWon == true) {
		name = get_string("Please enter your initials up to three letters!", " ");
		if (string_length(name) > 3)
		{
			name = string_copy(name, 1, 3);
		}
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



