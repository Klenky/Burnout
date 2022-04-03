/// @description Insert description here
// You can write your code in this editor
light[| eLight.X] = x;
light[| eLight.Y] = y;

randomize();
light[| eLight.Intensity] =  random_range(3, 3.5)

x = obj_player.x-2;
y = obj_player.y-12;


if global.turnitdown = true
{
	image_alpha -= 0.009;
	
	
}

if image_alpha <= 0
{
	global.winTrig = true;
}
