/// @description Insert description here
// You can write your code in this editor
if (global.textTrig = true)
{
	if textTrig2 = false
			{
				textTrig2 = true;
				instance_create_layer(637, 32, "Text", ObjTextBox);
				ObjTextBox.image_speed = .03;
				instance_create_layer(637, 32, "Text", ObjOpenText);
				ObjOpenText.depth = -5;
			}
			
			if (keyboard_check_pressed(vk_space))
			{
				instance_destroy (ObjTextBox);
				instance_destroy (ObjOpenText);
			}
}
