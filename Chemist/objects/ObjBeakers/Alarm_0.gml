/// @description Insert description here
// You can write your code in this editor
if splosionTrig = false
{
	splosionTrig = true;
	instance_create_layer(x,y,"Instances", ObjExplosion1);
	audio_play_sound(Aud_Explosion1, 8, false);
	ObjExplosion1.depth = -5;
	instance_destroy(self);
	instance_destroy(ObjTable);
	obj_floor.image_index = 1;
	instance_create_layer(x,y, "Instances", obj_player_fire2);
	obj_player_fire2.depth = -5;
	obj_playerOpening.image_xscale = -1;
	global.lookLeft = true;


	
}
