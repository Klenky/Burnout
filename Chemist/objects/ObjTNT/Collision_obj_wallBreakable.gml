/// @description Insert description here
// You can write your code in this editor
if soundTrig = false
{
	audio_play_sound(Aud_Explosion1, 8, false);
	soundTrig = true;
	instance_destroy(ObjTNT);
	instance_destroy(obj_wallBreakable);
}	
