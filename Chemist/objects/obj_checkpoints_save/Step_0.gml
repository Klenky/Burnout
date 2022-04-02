/// @description Insert description here
// You can write your code in this editor

if(isDead) {

	if (!instance_exists(obj_wallBreakable1)) 
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
}




