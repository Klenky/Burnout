/// @description Insert description here
// You can write your code in this editor

if(isDead) {

	if (global.checkpoint1 = true) 
	{
		currentSpawn = 1;
		alarm_set(0, 10);
		
	} 
	else 
	{
		currentSpawn = 0
	}
	instance_create_layer(xSpawn[currentSpawn], ySpawn[currentSpawn], "Instances", obj_player);
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_player_fire);
	obj_player_fire.depth = -5;
	instance_destroy(obj_oil_fire);
}




