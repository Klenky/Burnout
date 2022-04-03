/// @description Insert description here
// You can write your code in this editor

if (room == highScores) {
	draw_set_color(c_white);
	//draw_highscore(40,80,600,400)

	y_pos = 80;

	//var playerData = string(ds_list_find_value(bestTimes,0)) + string(" "); //+ bestTimes[0].pTime;
	for (var i = 0; i < highScoreIndex; i++) {
		//ds_list_sort(bestTimes, true);
		draw_text(40,y_pos, high_score[i][0]);
		draw_text(170,y_pos, high_score[i][1]);
		y_pos+=30;
		
		//ds_list_sort(bestTimes, false)

	}

}
//draw_text(80, 80, ds_list_find_value(bestTimes, 0));
//draw_text(40,80, bestTimes.playerOne.pName)
