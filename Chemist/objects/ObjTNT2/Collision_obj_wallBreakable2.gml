/// @description Insert description here
// You can write your code in this editor
if soundTrig = false
{
	audio_play_sound(Aud_Explosion1, 8, false);
	ShakeScreen();
	soundTrig = true;
	instance_destroy(ObjTNT2);
	instance_destroy(obj_wallBreakable2);
}	
