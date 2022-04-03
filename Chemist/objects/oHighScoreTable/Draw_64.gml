/// @description Insert description here
// You can write your code in this editor

if (room == highScores) {
	draw_set_color(c_white);
	var playerPosition = 1;
	//draw_highscore(40,80,600,400)

	y_pos = 100;
draw_text(120, 35, string ("#"));
	draw_text(450, 35, string ("Name"));
	draw_text(770, 35, string ("Score"));
	
	
	
	
	//var playerData = string(ds_list_find_value(bestTimes,0)) + string(" "); //+ bestTimes[0].pTime;
	for (var i = 0; i < highScoreIndex; i++) {
		//ds_list_sort(bestTimes, true);

		
		draw_text(770, y_pos, high_score[i][0]);
		draw_text(450,y_pos, high_score[i][1]);
		draw_text(120, y_pos, playerPosition);
		
		playerPosition++;
		y_pos+=65;

	}

}
//draw_text(80, 80, ds_list_find_value(bestTimes, 0));
//draw_text(40,80, bestTimes.playerOne.pName)
