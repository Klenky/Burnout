/// @description Insert description here
// You can write your code in this editor

if x < 783
{
	x +=1;
}

if x >= 783
{
	image_speed = 0
	global.textTrig = true;
}

if global.lookLeft = true
	{
		if alarm[0] == -1
	{
		alarm_set(0,90);
	}
	}
	
	if (fallTrig = true)
	{
		y += 10
		if musicTrig = false
		{
			musicTrig = true;
			audio_play_sound(aud_wilhelmScream,8,false);
		}
	}
	
	if y >= 768
	{
		room_goto(Room1)
	}
	
	
